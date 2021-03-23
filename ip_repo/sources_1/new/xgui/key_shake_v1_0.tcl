# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "clk_delay" -parent ${Page_0}


}

proc update_PARAM_VALUE.clk_delay { PARAM_VALUE.clk_delay } {
	# Procedure called to update clk_delay when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clk_delay { PARAM_VALUE.clk_delay } {
	# Procedure called to validate clk_delay
	return true
}


proc update_MODELPARAM_VALUE.clk_delay { MODELPARAM_VALUE.clk_delay PARAM_VALUE.clk_delay } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clk_delay}] ${MODELPARAM_VALUE.clk_delay}
}

