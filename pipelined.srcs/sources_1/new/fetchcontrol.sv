`timescale 1ns / 1ps

`include "cpuops.vh"

module fetchcontrol(
		input wire clock,
		input wire resetn,
		output logic [31:0] fetchaddress,
		input wire [31:0] meminstrout,
		input wire ififofull,
		output logic ififowe,
		output logic [63:0] ififodin,
		// Branch control
		input wire branchtargetknown,
		input wire [31:0] branchtarget );

logic [31:0] PC;

logic [1:0] fetchmachinestate;

localparam FETCH_IDLE = 2'b00;
localparam FETCH_WAITREAD = 2'b01;
localparam FETCH_QUEUE = 2'b10;
localparam FETCH_BRANCHSTALL = 2'b11;

always_ff @(posedge clock) begin
	if (~resetn) begin
		PC <= 32'd0;
		fetchaddress <= 32'd0;
		ififowe <= 1'b0;
		fetchmachinestate <= 2'b00;
	end else begin

		ififowe <= 1'b0;

		unique case (fetchmachinestate)

			FETCH_IDLE: begin // IDLE
				// Read one from FIFO if there's anything there
				if (~ififofull) begin
					fetchaddress <= PC;
					fetchmachinestate <= FETCH_WAITREAD; // wait one cycle for read
				end
			end

			FETCH_WAITREAD: begin // READ wait state
				fetchmachinestate <= FETCH_QUEUE; // We can now queue this instruction
			end

			FETCH_QUEUE: begin // QUEUE
				// Queue this instruction regardless, since executor has to figure out
				// that there's a branch and take action to calculate its target.
				ififowe <= 1'b1;
				ififodin <= {PC, meminstrout};

				// Decide on next state based on whether we have a branch instruction
				if ((meminstrout[6:0] == `OPCODE_JAL) | (meminstrout[6:0] == `OPCODE_JALR) | (meminstrout[6:0] == `OPCODE_BRANCH)) begin
					// Do not increment the PC just yet
					fetchmachinestate <= FETCH_BRANCHSTALL; // Drop to stall state
				end else begin
					// Next PC
					PC <= PC + 32'd4;
					fetchmachinestate <= FETCH_IDLE; // Loop to read state again
				end
			end

			FETCH_BRANCHSTALL: begin // BRANCH STALL
				if (branchtargetknown) begin
					// Set new branch target and resume normal operation
					PC <= branchtarget;
					fetchmachinestate <= FETCH_IDLE;
				end
			end

		endcase

	end
end

endmodule
