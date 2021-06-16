`timescale 1ns / 1ps

module rv32soc(
		input wire clock,
		input wire resetn,
		input wire resetp,

		output wire [31:0] instrmemaddress,
		output wire [31:0] meminstrout,
		
		input wire busstall,
		output wire [3:0] memwe,
		output wire memre,
		output wire [31:0] memdin,
		input wire [31:0] memdout,
		output wire [31:0] memaddress );

// Instruction FIFO wires
wire ififofull, ififoempty, ififovalid;
wire [63:0] ififodin, ififodout;
wire ififore, ififowe;

// Branch control
wire [31:0] branchtarget;
wire branchtargetknown;

// Register file wires
wire [31:0] registerdatain, registerdataout1, registerdataout2;
wire [4:0] sourceregister1, sourceregister2, destinationregister;
wire registerwriteenable;

// Fetch control
fetchcontrol rv32fetchcontrol(
		.clock(clock),
		.resetn(resetn),
		.fetchaddress(instrmemaddress),
		.meminstrout(meminstrout),
		.ififofull(ififofull),
		.ififowe(ififowe),
		.ififodin(ififodin),
		.branchtargetknown(branchtargetknown),
		.branchtarget(branchtarget) );

// Instruction FIFO
ififo rv32instructionfifo(
	.full(ififofull),
	.din(ififodin),
	.wr_en(ififowe),
	.empty(ififoempty),
	.dout(ififodout),
	.rd_en(ififore),
	.valid(ififovalid),
	.srst(resetp),
	.clk(clock) );

// Integer register file
registerfile rv32intregs(
	.clock(clock),
	.rs1(sourceregister1),
	.rs2(sourceregister2),
	.rd(destinationregister),
	.wren(registerwriteenable), 
	.datain(registerdatain),
	.rval1(registerdataout1),
	.rval2(registerdataout2) );

// Dispatch / execute unit
instructiondispatch rv32dispatch(
	.clock(clock),
	.resetn(resetn),
	.ififore(ififore),
	.ififoempty(ififoempty),
	.ififovalid(ififovalid),
	.ififodout(ififodout),
	.branchtargetknown(branchtargetknown),
	.branchtarget(branchtarget),
	.rs1(sourceregister1),
	.rs2(sourceregister2),
	.rd(destinationregister),
	.rwren(registerwriteenable),
	.rdatain(registerdatain),
	.rval1(registerdataout1),
	.rval2(registerdataout2),
	.busstall(busstall),
	.memwe(memwe),
	.memdout(memdout),
	.memdin(memdin),
	.memre(memre),
	.memaddress(memaddress) );

endmodule
