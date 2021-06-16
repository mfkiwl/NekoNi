// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
// Date        : Wed Jun 16 07:10:13 2021
// Host        : encilinux running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/engin/StorageA/FPGA/pipelined/pipelined.gen/sources_1/ip/uartfifo/uartfifo_sim_netlist.v
// Design      : uartfifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uartfifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module uartfifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid,
    rd_data_count);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output [9:0]rd_data_count;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  uartfifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module uartfifo_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module uartfifo_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module uartfifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module uartfifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module uartfifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module uartfifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
LFnQnf1Xx7iVAGcOcEhonbzj3ZsHayt+Xca9l8I4HV4iv/yB/JzIPv0REQQqplkNPFvEWF0y0PTi
Iyh86Miotw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Jj4Nrq1ZLf4CUmi2S4UCZmdA6cCIavzDrp+W5Ypnb8R1rKps1WdPSr0Sw/jdWVHSxvHOam8VD772
vTuPMLioRgxjjlTIEZ/MeKhnCvws8VxCIEqfHN1kVYOP6bRnk7clvXXUj6bodO4Rxzy3mKanlE0r
hMrVy2EvZY19oRTX74Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gLFqib+J8VuQAS2ySUTcjE/Eluiy2uYGEdew2RLJYQKRJM0W3LYaoWWFSH2iqvqHr6uJrR0Kfv1E
EFrjcE2rNxRlC2YZ1gbB0FjKTRGD1HGJDYEyiSdd8EhTx3Tvq6TEOHHJR7lQpPwiOW06YqpeWlex
q2TCcsKG6iTGUgRe4323pNrPAiTUXQrB26cBhNzT2Evj5fr5o0sMNJdunK05bTqpsGtEAFLIQHFL
KmSfUwQmudS2UMFdxHO72Rf+1alqYzk0ygUGuHfX8gOPMFoM/5t9FpGAkjp5X+UADJlxnmO07kj1
CJetyZWGR4KIePO2PmQWKj6y3JCJTzrVrLoxKg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSSfadTbKMCe24M4LPlaA3QI3+aggAGYblhs1Wz6Y+2cdPCDgZ8yGBOwyNSrNcY1R7OZHnl+JtHt
mnzWQIBmFoTursP/G8IEm0gMpHKhJVYJHLnRztw+465F8HIa9sEbeTSx5dabqHka21jKM94M/G8D
9nNLb1OctgZl0QWFeKP5L6Kw/R4FMc+5pMoZGpxZpjqyZW9D7Mv5TIf0/0CZUhLtGqrX7fv8iVa+
p4vvSdunsbkS0NB2ra/KMb25RSJ7QQyUiD841kIir3j6i/WrZvvHT6hV6gTsN4HEdt0zWQa6SpFW
/lWCjfbSLkI90YoE+iv1LRjEJsxx5DZBPuSuQw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Aq+9yqp0PixaoPPC9Z0ABnH9sIX2QkQ/48doR7EJtOD6yF1cL6sm+5o2zZeHVtqtRTyygez9jAMu
THfMnwIsURmOXkBK3s4wf84YyeLY1fR0GZQpNxFobFyPGLHVrHz8evhjVtGuXfzT9AHzjmh+y/EN
I9jGv6V5i3SvFrM+FUM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JNFWBRiARMrpKlVAaTVQuZEfy0zHpRBnhE+b9+JcYwBNFq8Eu0QK2Rkdk/u8s5bTgBgCKJUgUraX
DIKQHrD9yl49aXm6kOBXFqlOJEJCKa1byMWDwoBrWI1jzvoHFD/RhYplMLD3qAluru6UcD4Xh0JJ
irf4V2wUZR/A4qxYgs5IvJIoWSFl0altUSG4NXjBq77bpM744HVAItn65NE2BHFERfjdiE8fMnZy
LcfaxOrqnuRriCQE3U/PYR+/Rlgayiiqt6bitk1TqZh5iTOIKvHO7QYWw0qZq7x+vaTDrDXP1wWf
jNurXgUjeOFKvjcTnWOqS4hC2To5yr3Fq0jUEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0bIk3UKg3dCiEhOnLZCpzaAC7Zm3xM6UD3qxV3xOJdOJvF1p9hCVJDfSY0pXomZK67zQxkkcJ7jS
pOt49+jUgQLljfwMNeo4maVSN5J+YI/ftF+4Mn9TDd93B+oMqdkdYX6FC9wRmzOCLjRD7F9osx1G
k8iuk9wYK3O4Fjh5GNzaQlMfECUkB4a8VwmWAQ0EQkMlkbXmzxjKGYtTzcZiZMtF3GY1tAEGTat3
x83QvmlbOhTz5E06phpfYSfcb3wjXyoEqGGgSjnWhnc5lvm8V0emvBosbtX+iJif2KFw5ThooA2M
n4SW67PSopkTBk6IFcWCfNuQgly0Ha6Hxap2wg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ef2OGZ7OUYfWIQ48CI05JSMT1f6l7VlUr52KbnEPuwci9mF8eGpOXlrZGPo4A23CHu4IZsJFNqxh
928br6uS4Oji63eYEUJdn97c4cER+zINxiHLkBHtCINK5MRpTn+Lc8hHFX5GchOVlITQn5s/huM+
uA8OYt5pB5fKUDSeZL6dJnktn73/5eurJTxq/QH9D2716gpKIEts2IqRDEB8t4DAqpVC4UXXHE+5
tgbdMXP9AAVRZ4XAiJgjdg4OKFN38k1qvMUxzaSskECBqmaQgfCkz7h8E1lUrRy7DH7PhhGabdVn
EKfx/OET3Jkhf3VUjlW3s2bSNG7skmNCL2ap2g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RfJtGiVQIYYp5repKpt3ZF7DE5epnx6ohHzm2L3njQPOthWGNIBa8iGY/rURY00ulgW8v5/n6G4M
vkrxNEwbm4AcA6P3sfLtfP7mCqfTyQITT2DPsCxahEa0OPR3NgSJPxCRdOmINuJS+Af3QllwM6jS
SJx/Pbl+ZwEYchIiR6AXuq9DtFaq3APtQ1j8ZkZ7CfsdVR5mRDWsSn6nKFzW/wsA8igkYFtVV+9/
qPxL+ijyd/iDiz4lPnZCxSspghM/ajj07L6RI5thoNEn8ZmVtk9d3kH5z2f8yRxATGB/Zgd0Drr4
4eWVbN3C1rD2FJpm8zYndd9bjZQYOpQrSEqF9g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 107344)
`pragma protect data_block
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
pdZP/zzg1D5aKIFtCA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
