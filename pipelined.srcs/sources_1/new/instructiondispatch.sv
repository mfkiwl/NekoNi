`timescale 1ns / 1ps

`include "cpuops.vh"

module instructiondispatch(
	// Control signals
	input wire clock,
	input wire resetn,
	// FIFO read access
	output logic ififore,
	input wire ififoempty,
	input wire ififovalid,
	input wire [63:0] ififodout,
	// Unlock signals when we figure out branch target
	output logic branchtargetknown,
	output logic [31:0] branchtarget,
	// Register file out
	output logic [4:0] rd,
	output logic rwren,
	output logic [31:0] rdatain,
	// Register file in
	output logic [4:0] rs1,
	output logic [4:0] rs2,
	input wire [31:0] rval1,
	input wire [31:0] rval2,
	// Memory interface
	input wire busstall,
	output logic [3:0] memwe,
	output logic [31:0] memdin,
	output logic memre,
	input wire [31:0] memdout,
	output logic [31:0] memaddress );

logic [6:0] opcode;
logic [2:0] func3;
logic [6:0] func7;
logic selectimmedasrval2;
logic [31:0] immed;
logic [4:0] aluop;

logic [31:0] PC;
//logic [31:0] instruction;
logic [1:0] readstate;
logic execstrobe;
//logic decodekick;

// ----------------------------------------------
// Stream in instructions on high clock
// Also drives execute strobe
// ----------------------------------------------

localparam STRM_IDLE = 2'b00;
localparam STRM_READSTALL = 2'b01;
localparam STRM_WAITEXEC = 2'b10;

always_ff @(posedge clock) begin

	if (~resetn) begin
		ififore <= 1'b0;
		readstate <= STRM_IDLE;
		execstrobe <= 1'b0;
		//decodekick <= 1'b0;
	end else begin

		ififore <= 1'b0;
		execstrobe <= 1'b0;

		unique case (readstate)
			STRM_IDLE: begin
				if (~ififoempty) begin
					ififore <= 1'b1;
					readstate <= STRM_READSTALL;
				end
			end

			STRM_READSTALL: begin
				// Fetch instruction from FIFO
				if (ififovalid) begin
					// Off to be decoded
					//instruction <= ififodout[31:0];
					PC <= ififodout[63:32];
					readstate <= STRM_WAITEXEC;
					// Trigger decode unit (visible immediately)
					//decodekick <= ~decodekick;
					decode(ififodout[31:0]);
					// Strobe execution unit (visible on next clock)
					execstrobe <= 1'b1;
				end
			end

			// Takes two clocks
			STRM_WAITEXEC: begin
				if (~execstrobe) begin
					readstate <= STRM_IDLE;
				end
			end

		endcase
	end
end

// ----------------------------------------------
// I-ALU
// ----------------------------------------------

wire [31:0] aluout;
wire [31:0] rval2selector = selectimmedasrval2 ? immed : rval2;

// Integer ALU unit
integeralu rv32integeralu(
	.aluout(aluout),
	.func3(func3),
	.val1(rval1),
	.val2(rval2selector),
	.aluop(aluop) );

// ----------------------------------------------
// B-ALU
// ----------------------------------------------

wire branchout;
branchalu rv32branchalu(
	.branchout(branchout),
	.val1(rval1),
	.val2(rval2),
	.aluop(aluop) );

// ----------------------------------------------
// Decode
// ----------------------------------------------

task decode(input [31:0] instruction);
	begin
		opcode <= instruction[6:0];
		rs1 <= instruction[19:15];
		rs2 <= instruction[24:20];
		// rs3 = instruction[31:27]; // To be used later (float fused multiply-add)
		rd <= instruction[11:7];
		func3 <= instruction[14:12];
		func7 <= instruction[31:25];
		selectimmedasrval2 <= (instruction[6:0]==`OPCODE_OP_IMM) ? 1'b1 : 1'b0;
	
		case (instruction[6:0])
			`OPCODE_OP: begin
				immed <= 32'd0;
				if (instruction[25]==1'b0) begin
					// I-mode
					unique case (instruction[14:12])
						3'b000: aluop <= instruction[30] == 1'b0 ? `ALU_ADD : `ALU_SUB;
						3'b001: aluop <= `ALU_SLL;
						3'b010: aluop <= `ALU_SLT;
						3'b011: aluop <= `ALU_SLTU;
						3'b100: aluop <= `ALU_XOR;
						3'b101: aluop <= instruction[30] == 1'b0 ? `ALU_SRL : `ALU_SRA;
						3'b110: aluop <= `ALU_OR;
						3'b111: aluop <= `ALU_AND;
					endcase
				end else begin
					// M-mode (mul/div/rem)
					aluop <= `ALU_NONE;
				end
			end
	
			`OPCODE_OP_IMM: begin
				immed <= {{20{instruction[31]}}, instruction[31:20]};
				unique case (instruction[14:12])
					3'b000: aluop <= `ALU_ADD; // NOTE: No immediate mode sub instruction exists
					3'b001: aluop <= `ALU_SLL;
					3'b010: aluop <= `ALU_SLT;
					3'b011: aluop <= `ALU_SLTU;
					3'b100: aluop <= `ALU_XOR;
					3'b101: aluop <= instruction[30] == 1'b0 ? `ALU_SRL : `ALU_SRA;
					3'b110: aluop <= `ALU_OR;
					3'b111: aluop <= `ALU_AND;
				endcase
			end
	
			`OPCODE_LOAD: begin
				immed <= {{20{instruction[31]}}, instruction[31:20]};
				aluop <= `ALU_NONE;
			end
	
			`OPCODE_LUI, `OPCODE_AUPC: begin
				immed <= {instruction[31:12],12'd0};
				aluop <= `ALU_NONE;
			end
	
			`OPCODE_STORE: begin
				immed <= {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
				aluop <= `ALU_NONE;
			end
	
			`OPCODE_JAL: begin
				immed <= {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
				aluop <= `ALU_NONE;
			end
	
			`OPCODE_JALR: begin
				immed <= {{20{instruction[31]}}, instruction[31:20]};
				aluop <= `ALU_NONE;
			end
	
			`OPCODE_BRANCH: begin
				immed <= {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8],1'b0};
				unique case (instruction[14:12])
					3'b000: aluop <= `ALU_EQ;
					3'b001: aluop <= `ALU_NE;
					3'b100: aluop <= `ALU_L;
					3'b101: aluop <= `ALU_GE;
					3'b110: aluop <= `ALU_LU;
					3'b111: aluop <= `ALU_GEU;
					default: aluop <= `ALU_NONE;
				endcase
			end
	
			`OPCODE_SYSTEM: begin
				immed <= {27'd0, instruction[19:15]};
				aluop <= `ALU_NONE;
			end
	
			default: begin
				immed <= 32'd0;
				aluop <= `ALU_NONE;
			end
		endcase
	end
endtask

// ----------------------------------------------
// Execute-dispatch on low clock
// ----------------------------------------------

logic postloadrwen;
logic poststorememwe;
logic [1:0] instructiondelay;

always_ff @(posedge clock) begin

	if (~resetn) begin

		branchtargetknown <= 1'b0;
		branchtarget <= 32'd0;
		rwren <= 1'b0;
		rdatain <= 32'd0;
		memre <= 1'b0;
		memwe <= 4'b0000;
		memaddress <= 32'h00000000;
		memdin <= 32'd0;
		instructiondelay <= 2'b00;
		postloadrwen <= 1'b0;
		poststorememwe <= 1'b0;

	end else begin

		branchtargetknown <= 1'b0;

		// Shut down read and write requests in all cases (since they should always strobe one clock)
		memre <= 1'b0;
		memwe <= 4'b0000;
		rwren <= 1'b0;

		// Do not exit executing state while we are supposed to delay this instruction
		if (instructiondelay == 2'b00) begin
			if (busstall) begin
				// Delay a bit more
				instructiondelay <= 2'b1;
			end else begin
				if (poststorememwe) begin
					store();
					// Turn off post-store memory write
					poststorememwe <= 1'b0;
				end
				if (postloadrwen) begin
					load();
					rwren <= 1'b1;
					// Turn off post-load register write
					postloadrwen <= 1'b0;
				end
			end
		end else begin
			// Keep calm and count down until our delay clocks are done
			instructiondelay <= instructiondelay - 2'd1;
		end

		if (execstrobe) begin
			exec();
		end

	end
end

task store();
begin
	unique case (func3)
		3'b000: begin // BYTE
			memdin <= {rval2[7:0], rval2[7:0], rval2[7:0], rval2[7:0]};
			unique case (memaddress[1:0])
				2'b11: begin memwe <= 4'b1000; end
				2'b10: begin memwe <= 4'b0100; end
				2'b01: begin memwe <= 4'b0010; end
				2'b00: begin memwe <= 4'b0001; end
			endcase
		end
		3'b001: begin // WORD
			memdin <= {rval2[15:0], rval2[15:0]};
			unique case (memaddress[1])
				1'b1: begin memwe <= 4'b1100; end
				1'b0: begin memwe <= 4'b0011; end
			endcase
		end
		default: begin // DWORD
			memdin <= rval2;
			memwe <= 4'b1111;
		end
	endcase
end
endtask

task exec();
begin
	unique case (opcode)
		`OPCODE_BRANCH: begin
			branchtargetknown <= 1'b1;
			branchtarget <= branchout == 1'b1 ? PC + immed : PC + 32'd4;
		end

		`OPCODE_JALR: begin
			branchtargetknown <= 1'b1;
			rwren <= 1'b1;
			rdatain <= PC+32'd4;
			branchtarget <= rval1 + immed;
		end

		`OPCODE_JAL: begin
			branchtargetknown <= 1'b1;
			rwren <= 1'b1;
			rdatain <= PC+32'd4;
			branchtarget <= PC + immed;
		end

		`OPCODE_OP_IMM: begin
			rwren <= 1'b1;
			rdatain <= aluout;
		end

		`OPCODE_OP: begin
			rwren <= 1'b1;
			rdatain <= aluout;
		end

		`OPCODE_LUI: begin
			rwren <= 1'b1;
			rdatain <= immed;
		end

		`OPCODE_STORE: begin
			poststorememwe <= 1'b1;
			memaddress <= rval1 + immed;
		end

		`OPCODE_LOAD: begin
			postloadrwen <= 1'b1;
			memaddress <= rval1 + immed;
			memre <= 1'b1;
			instructiondelay <= 2'd1; // Delay one clock for read
		end

		`OPCODE_AUPC: begin
			rwren <= 1'b1;
			rdatain <= PC + immed;
		end

		`OPCODE_FENCE: begin
			//
		end

		`OPCODE_SYSTEM: begin
			//
		end

		default: begin
			// Unknown instruction, throw exception(2)
		end
	endcase
end
endtask

task load();
begin
	unique case (func3)
		3'b000: begin // BYTE with sign extension
			unique case (memaddress[1:0])
				2'b11: begin rdatain <= {{24{memdout[31]}}, memdout[31:24]}; end
				2'b10: begin rdatain <= {{24{memdout[23]}}, memdout[23:16]}; end
				2'b01: begin rdatain <= {{24{memdout[15]}}, memdout[15:8]}; end
				2'b00: begin rdatain <= {{24{memdout[7]}}, memdout[7:0]}; end
			endcase
		end
		3'b001: begin // WORD with sign extension
			unique case (memaddress[1])
				1'b1: begin rdatain <= {{16{memdout[31]}}, memdout[31:16]}; end
				1'b0: begin rdatain <= {{16{memdout[15]}}, memdout[15:0]}; end
			endcase
		end
		3'b010: begin // DWORD
			rdatain <= memdout[31:0];
		end
		3'b100: begin // BYTE with zero extension
			unique case (memaddress[1:0])
				2'b11: begin rdatain <= {24'd0, memdout[31:24]}; end
				2'b10: begin rdatain <= {24'd0, memdout[23:16]}; end
				2'b01: begin rdatain <= {24'd0, memdout[15:8]}; end
				2'b00: begin rdatain <= {24'd0, memdout[7:0]}; end
			endcase
		end
		3'b101: begin // WORD with zero extension
			unique case (memaddress[1])
				1'b1: begin rdatain <= {16'd0, memdout[31:16]}; end
				1'b0: begin rdatain <= {16'd0, memdout[15:0]}; end
			endcase
		end
	endcase
end
endtask

endmodule
