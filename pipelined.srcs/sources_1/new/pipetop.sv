`timescale 1ns / 1ps

// NekoNi
// A small rv32i CPU
// (c) 2021 Engin Cilasun

module pipetop(
	input wire CLK_I,
	input wire RST_I,
	// UART pins
	output uart_rxd_out,
	input uart_txd_in );

// -----------------------------------------------------------------------
// Clocks & reset lines
// -----------------------------------------------------------------------

wire masterclock, uartbase, clocklocked;
masterclock systemclock(
	.resetn(~RST_I),
	.clk_in1(CLK_I),
	.masterclock(masterclock),
	.uartbase(uartbase),
	.locked(clocklocked)
);

wire resetp = RST_I | (~clocklocked);
wire resetn = (~RST_I) & clocklocked;

// -----------------------------------------------------------------------
// Misc wires / logic
// -----------------------------------------------------------------------

// Instruction memory wires
wire [31:0] instrmemaddress;
wire [31:0] meminstrout;

// Regular memory r/w wires
wire [3:0] memwe;
wire memre;
wire [31:0] memdin, memdout;
wire [31:0] memaddress;

logic busstall = 1'b0;
logic [31:0] busdataout;

// -----------------------------------------------------------------------
// Peripheral select
// -----------------------------------------------------------------------

wire deviceBRAM					= (memaddress[31:28]==4'b0000) & (memaddress < 32'h00010000) ? 1'b1 : 1'b0;		// 0x00000000 - 0x0000FFFF (64Kbytes)
wire deviceDDR3					= (memaddress[31:28]==4'b0000) & (memaddress >= 32'h00010000) ? 1'b1 : 1'b0;	// 0x00010000 - 0x0FFFFFFF (256Mbytes-64Kbytes)
wire deviceAPUFIFOWrite			= {memaddress[31:28], memaddress[5:2]} == 8'b10001000 ? 1'b1 : 1'b0;			// 0x8xxxxx20 APU command queue
wire deviceSwitchCountRead		= {memaddress[31:28], memaddress[5:2]} == 8'b10000111 ? 1'b1 : 1'b0;			// 0x8xxxxx1C Switch incoming queue byte count
wire deviceSwitchRead			= {memaddress[31:28], memaddress[5:2]} == 8'b10000110 ? 1'b1 : 1'b0;			// 0x8xxxxx18 Device switch states
wire deviceSPIWrite				= {memaddress[31:28], memaddress[5:2]} == 8'b10000101 ? 1'b1 : 1'b0;			// 0x8xxxxx14 SPI interface to SDCart write port
wire deviceSPIRead				= {memaddress[31:28], memaddress[5:2]} == 8'b10000100 ? 1'b1 : 1'b0;			// 0x8xxxxx10 SPI interface to SDCard read port
wire deviceUARTTxWrite			= {memaddress[31:28], memaddress[5:2]} == 8'b10000011 ? 1'b1 : 1'b0;			// 0x8xxxxx0C UART write port
wire deviceUARTRxRead			= {memaddress[31:28], memaddress[5:2]} == 8'b10000010 ? 1'b1 : 1'b0;			// 0x8xxxxx08 UART read port
wire deviceUARTByteCountRead	= {memaddress[31:28], memaddress[5:2]} == 8'b10000001 ? 1'b1 : 1'b0;			// 0x8xxxxx04 UART incoming queue byte count
wire deviceGPUFIFOWrite			= {memaddress[31:28], memaddress[5:2]} == 8'b10000000 ? 1'b1 : 1'b0;			// 0x8xxxxx00 GPU command queue

// -----------------------------------------------------------------------
// Device : UART
// Serial communications at 115200bps
// -----------------------------------------------------------------------

// Transmitter (CPU -> FIFO -> Tx)

wire [9:0] outfifodatacount;
wire [7:0] outfifoout;
wire uarttxbusy, outfifofull, outfifoempty, outfifovalid;
logic [7:0] datatotransmit = 8'h00;
logic [7:0] outfifoin; // This will create a latch since it keeps its value
logic transmitbyte = 1'b0;
logic txstate = 1'b0;
logic outuartfifowe = 1'b0;
logic outfifore = 1'b0;

async_transmitter UART_transmit(
	.clk(uartbase),
	.TxD_start(transmitbyte),
	.TxD_data(datatotransmit),
	.TxD(uart_rxd_out),
	.TxD_busy(uarttxbusy) );

// Output FIFO
uartfifo UART_out_fifo(
    // In
    .full(outfifofull),
    .din(outfifoin),		// Data latched from CPU
    .wr_en(outuartfifowe),	// CPU controls write, high for one clock
    // Out
    .empty(outfifoempty),	// Nothing to read
    .dout(outfifoout),		// To transmitter
    .rd_en(outfifore),		// Transmitter can send
    .wr_clk(masterclock),	// CPU write clock
    .rd_clk(uartbase),		// Transmitter clock runs much slower
    .valid(outfifovalid),	// Read result valid
    // Ctl
    .rst(reset_p),
    .rd_data_count(outfifodatacount) );

// Fifo output serializer
always @(posedge uartbase) begin
	if (txstate == 1'b0) begin // IDLE_STATE
		if (~uarttxbusy & (transmitbyte == 1'b0)) begin // Safe to attempt send, UART not busy or triggered
			if (~outfifoempty) begin // Something in FIFO? Trigger read and go to transmit 
				outfifore <= 1'b1;			
				txstate <= 1'b1;
			end else begin
				outfifore <= 1'b0;
				txstate <= 1'b0; // Stay in idle state
			end
		end else begin // Transmit hardware busy or we kicked a transmit (should end next clock)
			outfifore <= 1'b0;
			txstate <= 1'b0; // Stay in idle state
		end
		transmitbyte <= 1'b0;
	end else begin // TRANSMIT_STATE
		outfifore <= 1'b0; // Stop read request
		if (outfifovalid) begin // Kick send and go to idle
			datatotransmit <= outfifoout;
			transmitbyte <= 1'b1;
			txstate <= 1'b0;
		end else begin
			txstate <= 1'b1; // Stay in transmit state and wait for valid fifo data
		end
	end
end

// Receiver (Rx -> FIFO -> CPU)

wire [9:0] infifodatacount;
wire [7:0] infifoout, uartbytein;
wire infifofull, infifoempty, infifovalid, uartbyteavailable;
logic [7:0] inuartbyte;
logic infifowe = 1'b0;

async_receiver UART_receive(
	.clk(uartbase),
	.RxD(uart_txd_in),
	.RxD_data_ready(uartbyteavailable),
	.RxD_data(uartbytein),
	.RxD_idle(),
	.RxD_endofpacket() );

// Input FIFO
uartfifo UART_in_fifo(
    // In
    .full(infifofull),
    .din(inuartbyte),
    .wr_en(infifowe),
    // Out
    .empty(infifoempty),
    .dout(infifoout),
    .rd_en(memre & deviceUARTRxRead),
    .wr_clk(uartbase),
    .rd_clk(masterclock),
    .valid(infifovalid),
    // Ctl
    .rst(reset_p),
    .rd_data_count(infifodatacount) );

// Fifo input control
always @(posedge uartbase) begin
	if (uartbyteavailable) begin
		infifowe <= 1'b1;
		inuartbyte <= uartbytein;
	end else begin
		infifowe <= 1'b0;
	end
end

// -----------------------------------------------------------------------
// Device : BRAM
// 0x00000000-0x0000FFFF
// -----------------------------------------------------------------------

iram rv32iram(
	// Port A - Instruction acccess
	.clka(masterclock),								// Fetch clock
	.addra(instrmemaddress[15:2]),					// Corresponds to PC
	.dina(32'd0),									// No data in here
	.douta(meminstrout),							// Instruction out
	.ena(resetn),									// Always enabled outside reset
	.wea(4'b0000),									// No data write control here
	// Port B - data r/w port
	.clkb(masterclock),								// Data unit clock
	.addrb(memaddress[15:2]),						// Data read or write address
	.dinb(memdin),									// Data write in
	.doutb(memdout),								// Data read out
	.enb(deviceBRAM & (memre | (|memwe)) & resetn),	// Data line enabled when r/w & BRAM being addressed
	.web(deviceBRAM ? memwe:4'b0000) );				// Data write enabled when w & BRAM being addressed
	
// -----------------------------------------------------------------------
// Bus traffic control and routing
// -----------------------------------------------------------------------

wire [31:0] uartdataout = {24'd0, infifoout};
wire [31:0] uartbytecountout = {22'd0, infifodatacount};
//wire [31:0] switchdatacountout = {22'd0, switchdatacount};
//wire [31:0] sddatawide = {24'd0, sdrq_dataout};
//wire [31:0] switchdatawide = switchempty ? {24'd0, newswitchstate} : {24'd0, switchdataout};

always_comb begin
	unique case(1'b1)
		deviceUARTRxRead: busdataout = uartdataout;
		deviceUARTByteCountRead: busdataout = uartbytecountout;
		//deviceSPIRead: busdataout = sddatawide;
		//deviceSwitchRead: busdataout = switchdatawide;
		//deviceSwitchCountRead: busdataout = switchdatacountout;
		//deviceDDR3: busdataout = ddr3dataout;
		deviceBRAM: busdataout = memdout;
	endcase
end

//wire ddr3stall = deviceDDR3 ? (ddr3readstall | ddr3writestall) : 1'b0;
//wire gpustall = deviceGPUFIFOWrite ? gpu_fifowrfull : 1'b0;
wire uartwritestall = deviceUARTTxWrite ? outfifofull : 1'b0;
wire uartreadstall = deviceUARTRxRead ? infifoempty : 1'b0;
//wire spiwritestall = deviceSPIWrite ? sdwq_full : 1'b0;
//wire spireadstall = deviceSPIRead ? sdrq_empty : 1'b0;
// NOTE: Switch reads will never stall, but either return instant state or cached state from FIFO

// Bus stall states per device
always_comb begin
	unique case(1'b1)
		deviceUARTTxWrite: busstall = uartwritestall;
		deviceUARTRxRead: busstall = uartreadstall;
		//deviceSPIRead: busstall = spireadstall;
		//deviceSPIWrite: busstall = spiwritestall;
		//deviceDDR3: busstall = ddr3stall;
		//deviceGPUFIFOWrite: busstall = gpustall;
		//deviceAPUFIFOWrite: busstall = apustall;
	endcase
end

always_comb begin
	// SYSMEM r/w (0x00000000 - 0x0003FFFF)
	// This one self-selects in the System memory section
	
	// DDR3 (0x00040000 - 0x0FFFFFFF)
	// Handler is a clocked module

	// Audio fifo write control
	//apu_fifocommandoin = memdin;
	//apu_fifowe = deviceAPUFIFOWrite ? ((~apu_fifowrfull) & (|buswe)) : 1'b0;

	// GPU command fifo write control
	//gpu_fifocommand = memdin; // DWORD writes only, no byte masking
	//gpu_fifowe = deviceGPUFIFOWrite ? ((~gpu_fifowrfull) & (|buswe)) : 1'b0;

	// UART (receive)
	// This one self-selects in the UART device

	// SPI (receive)
	//sdrq_re = (deviceSPIRead & (~sdrq_empty)) ? memre : 1'b0;
	
	// Switch (receive)
	//switchre = (deviceSwitchRead & (~switchempty)) ? memre : 1'b0;

	// UART (transmit)
	case (memwe)
		4'b1000: begin outfifoin = memdin[31:24]; end
		4'b0100: begin outfifoin = memdin[23:16]; end
		4'b0010: begin outfifoin = memdin[15:8]; end
		4'b0001: begin outfifoin = memdin[7:0]; end
		default: begin outfifoin = 32'd0; end
	endcase
	outuartfifowe = deviceUARTTxWrite ? ((~outfifofull) & (|memwe)) : 1'b0;

	// SPI (transmit)
	/*case (memwe)
		4'b1000: begin sdwq_datain = memdin[31:24]; end
		4'b0100: begin sdwq_datain = memdin[23:16]; end
		4'b0010: begin sdwq_datain = memdin[15:8]; end
		4'b0001: begin sdwq_datain = memdin[7:0]; end
		default: begin sdwq_datain = 32'd0; end 
	endcase
	sdwq_we = deviceSPIWrite ? ((~sdwq_full) & (|memwe)) : 1'b0;*/
end


// -----------------------------------------------------------------------
// Device : CPU#0
// -----------------------------------------------------------------------

rv32soc nekoni(
		.clock(masterclock),
		.resetn(resetn),
		.resetp(resetp),
		.instrmemaddress(instrmemaddress),
		.busstall(busstall),
		.meminstrout(meminstrout),
		.memwe(memwe),
		.memre(memre),
		.memdin(memdin),
		.memdout(busdataout),
		.memaddress(memaddress) );

endmodule
