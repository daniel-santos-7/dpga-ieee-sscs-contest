# User config
set ::env(DESIGN_NAME) spi_slave

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) 20
set ::env(CLOCK_PORT) "sclk"

set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/spi_slave/pin_order.cfg
set ::env(FP_CORE_UTIL) 5
set ::env(PL_TARGET_DENSITY) 0.5

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

