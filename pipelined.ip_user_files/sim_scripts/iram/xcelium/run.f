-makelib xcelium_lib/xpm -sv \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/engin/StorageA/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../pipelined.gen/sources_1/ip/iram/sim/iram.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

