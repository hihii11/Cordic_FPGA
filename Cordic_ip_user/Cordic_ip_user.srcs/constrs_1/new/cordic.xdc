set_property PACKAGE_PIN T15 [get_ports SW]
set_property PACKAGE_PIN R14 [get_ports A ]
set_property PACKAGE_PIN P14 [get_ports B ]
set_property IOSTANDARD LVCMOS33 [get_ports A]
set_property IOSTANDARD LVCMOS33 [get_ports B]
set_property IOSTANDARD LVCMOS33 [get_ports SW]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets  SW_IBUF] 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets  A _IBUF] 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets  B _IBUF] 

