
#leds
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports led0_b]
set_property -dict {PACKAGE_PIN F6 IOSTANDARD LVCMOS33} [get_ports led0_g]
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS33} [get_ports led0_r]

#clk
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_in]

set_property CONFIG_MODE SPIx4 [current_design]
