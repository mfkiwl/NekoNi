`timescale 1ns / 1ps

// Dual port memory for CSR register file

module dualportCSRmemory(
	// Write port
	input wire clk1,
	input wire [11:0] addr_in,
	input wire [31:0] d,
	input wire we,

	// Read port
	input wire clk2,
	input wire [11:0] addr_out,
	output logic [31:0] q );

logic [11:0] addr_out_reg;
logic [31:0] mem [4095:0];

initial begin
	addr_out_reg = 32'd0;
	q = 32'd0;
end

// Write on same clock
always @(posedge clk1) begin
	if (we)
		mem[addr_in] <= d;
end

// Data available on next clock
always @(posedge clk2) begin
	addr_out_reg <= addr_out;
	q <= mem[addr_out_reg];
end

endmodule

