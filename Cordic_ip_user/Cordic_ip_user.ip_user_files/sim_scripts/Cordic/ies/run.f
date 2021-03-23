-makelib ies_lib/xilinx_vip -sv \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_processing_system7_0_0/sim/Cordic_processing_system7_0_0.v" \
  "../../../bd/Cordic/ipshared/27e7/src/cordic.v" \
  "../../../bd/Cordic/ipshared/27e7/hdl/cordic_v1_0_S0_AXI.v" \
  "../../../bd/Cordic/ipshared/27e7/hdl/cordic_v1_0.v" \
  "../../../bd/Cordic/ip/Cordic_cordic_0_1/sim/Cordic_cordic_0_1.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_19 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_xbar_0/sim/Cordic_xbar_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_rst_ps7_0_100M_0/sim/Cordic_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ipshared/7615/src/Roate_keyv2.v" \
  "../../../bd/Cordic/ipshared/7615/hdl/Roate_keyv2_v1_0_S0_AXI.v" \
  "../../../bd/Cordic/ipshared/7615/hdl/Roate_keyv2_v1_0.v" \
  "../../../bd/Cordic/ip/Cordic_Roate_keyv2_0_0/sim/Cordic_Roate_keyv2_0_0.v" \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/src/pmod_concat.v" \
  "../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/sim/PmodOLED_pmod_bridge_0_0.v" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_12 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_12 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_quad_spi_v3_2_17 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/sim/PmodOLED_axi_quad_spi_0_0.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_20 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/sim/PmodOLED_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/0bf9/src/PmodOLED.v" \
  "../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/sim/Cordic_PmodOLED_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Cordic/ip/Cordic_auto_pc_0/sim/Cordic_auto_pc_0.v" \
  "../../../bd/Cordic/sim/Cordic.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

