-makelib xcelium_lib/xpm -sv \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pipelined.gen/sources_1/ip/masterclock/masterclock_clk_wiz.v" \
  "../../../../pipelined.gen/sources_1/ip/masterclock/masterclock.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

