vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_quad_spi_v3_2_17
vlib activehdl/axi_gpio_v2_0_20
vlib activehdl/axi_protocol_converter_v2_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_17 activehdl/axi_quad_spi_v3_2_17
vmap axi_gpio_v2_0_20 activehdl/axi_gpio_v2_0_20
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Cordic/ip/Cordic_processing_system7_0_0/sim/Cordic_processing_system7_0_0.v" \
"../../../bd/Cordic/ipshared/27e7/src/cordic.v" \
"../../../bd/Cordic/ipshared/27e7/hdl/cordic_v1_0_S0_AXI.v" \
"../../../bd/Cordic/ipshared/27e7/hdl/cordic_v1_0.v" \
"../../../bd/Cordic/ip/Cordic_cordic_0_1/sim/Cordic_cordic_0_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Cordic/ip/Cordic_xbar_0/sim/Cordic_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Cordic/ip/Cordic_rst_ps7_0_100M_0/sim/Cordic_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Cordic/ipshared/7615/src/Roate_keyv2.v" \
"../../../bd/Cordic/ipshared/7615/hdl/Roate_keyv2_v1_0_S0_AXI.v" \
"../../../bd/Cordic/ipshared/7615/hdl/Roate_keyv2_v1_0.v" \
"../../../bd/Cordic/ip/Cordic_Roate_keyv2_0_0/sim/Cordic_Roate_keyv2_0_0.v" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/src/pmod_concat.v" \
"../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_pmod_bridge_0_0/sim/PmodOLED_pmod_bridge_0_0.v" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_quad_spi_0_0/sim/PmodOLED_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/src/PmodOLED_axi_gpio_0_0/sim/PmodOLED_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/0bf9/src/PmodOLED.v" \
"../../../bd/Cordic/ip/Cordic_PmodOLED_0_0/sim/Cordic_PmodOLED_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/ec67/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ipshared/70cf/hdl" "+incdir+../../../../Cordic_ip_user.srcs/sources_1/bd/Cordic/ip/Cordic_processing_system7_0_0" "+incdir+D:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/Cordic/ip/Cordic_auto_pc_0/sim/Cordic_auto_pc_0.v" \
"../../../bd/Cordic/sim/Cordic.v" \

vlog -work xil_defaultlib \
"glbl.v"

