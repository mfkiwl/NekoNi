// ===================== INSTUCTION GROUPS ======================
`define OPCODE_OP_IMM 	    7'b0010011
`define OPCODE_OP		    7'b0110011
`define OPCODE_LUI		    7'b0110111
`define OPCODE_STORE	    7'b0100011
`define OPCODE_LOAD		    7'b0000011
`define OPCODE_JAL		    7'b1101111
`define OPCODE_JALR		    7'b1100111
`define OPCODE_BRANCH	    7'b1100011
`define OPCODE_AUPC		    7'b0010111
`define OPCODE_FENCE	    7'b0001111
`define OPCODE_SYSTEM	    7'b1110011
//`define OPCODE_FLOAT_OP     7'b1010011
//`define OPCODE_FLOAT_LDW    7'b0000111
//`define OPCODE_FLOAT_STW    7'b0100111
//`define OPCODE_FLOAT_MADD   7'b1000011 
//`define OPCODE_FLOAT_MSUB   7'b1000111 
//`define OPCODE_FLOAT_NMSUB  7'b1001011 
//`define OPCODE_FLOAT_NMADD  7'b1001111

// ======================== INTEGER ALU =========================
`define ALU_NONE		5'd0

`define ALU_ADD 		5'd1
`define ALU_SUB			5'd2
`define ALU_SLL			5'd3
`define ALU_SLT			5'd4
`define ALU_SLTU		5'd5
`define ALU_XOR			5'd6
`define ALU_SRL			5'd7
`define ALU_SRA			5'd8
`define ALU_OR			5'd9
`define ALU_AND			5'd10

`define ALU_MUL			5'd11
`define ALU_DIV			5'd12
`define ALU_REM			5'd13

`define ALU_EQ			5'd14
`define ALU_NE			5'd15
`define ALU_L			5'd16
`define ALU_GE			5'd17
`define ALU_LU			5'd18
`define ALU_GEU			5'd19

// ======================== RV32 I ==============================
//       			[6:0]		[14:12] [31:25] [24:20]
`define LUI			7'b0110111  //+
`define AUIPC		7'b0010111  //+
`define JAL			7'b1101111  //+
`define JALR		7'b1100111	//+ 000
`define BEQ			7'b1100011	//+ 000
`define BNE			7'b1100011	//+ 001
`define BLT			7'b1100011	//+ 100
`define BGE			7'b1100011	//+ 101
`define BLTU		7'b1100011	//+ 110
`define BGEU		7'b1100011	//+ 111
`define LB			7'b0000011	//+ 000
`define LH			7'b0000011	//+ 001
`define LW			7'b0000011	//+ 010
`define LBU			7'b0000011	//+ 100
`define LHU			7'b0000011	//+ 101
`define SB			7'b0100011	//+ 000
`define SH			7'b0100011	//+ 001
`define SW			7'b0100011	//+ 010
`define ADDI		7'b0010011	//+ 000
`define SLTI		7'b0010011	//+ 010
`define SLTIU		7'b0010011	//+ 011
`define XORI		7'b0010011	//+ 100
`define ORI			7'b0010011	//+ 110
`define ANDI		7'b0010011	//+ 111
`define SLLI		7'b0010011	//+ 001  0000000
`define SRLI		7'b0010011	//+ 101  0000000
`define SRAI		7'b0010011	//+ 101  0100000
`define ADD			7'b0110011	//+ 000  0000000
`define SUB			7'b0110011	//+ 000  0100000
`define SLL			7'b0110011	//+ 001  0000000
`define SLT			7'b0110011	//+ 010  0000000
`define SLTU		7'b0110011	//+ 011  0000000
`define XOR			7'b0110011	//+ 100  0000000
`define SRL			7'b0110011	//+ 101  0000000
`define SRA			7'b0110011	//+ 101  0100000
`define OR			7'b0110011	//+ 110  0000000
`define AND			7'b0110011	//+ 111  0000000
`define FENCE		7'b0001111	// 000
`define ECALL		7'b1110011	// 000  0000000  00000
`define EBREAK		7'b1110011	// 000  0000000  00001

// ======================== ALU =================================
`define ALU_NONE		5'd0

`define ALU_ADD 		5'd1
`define ALU_SUB			5'd2
`define ALU_SLL			5'd3
`define ALU_SLT			5'd4
`define ALU_SLTU		5'd5
`define ALU_XOR			5'd6
`define ALU_SRL			5'd7
`define ALU_SRA			5'd8
`define ALU_OR			5'd9
`define ALU_AND			5'd10

`define ALU_MUL			5'd11
`define ALU_DIV			5'd12
`define ALU_REM			5'd13

`define ALU_EQ			5'd14
`define ALU_NE			5'd15
`define ALU_L			5'd16
`define ALU_GE			5'd17
`define ALU_LU			5'd18
`define ALU_GEU			5'd19