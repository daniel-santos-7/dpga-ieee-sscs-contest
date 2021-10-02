OPENLANE_DIR ?=
OPENLANE_TAG ?= 2021.09.16_03.28.21

.PHONY: all
all: work-obj93.cf spi_slave_tb.ghw src/spi_slave.v

work-obj93.cf: spi_slave.vhdl spi_slave_tb.vhdl
	ghdl -a spi_slave.vhdl;
	ghdl -a spi_slave_tb.vhdl;

spi_slave_tb.ghw: work-obj93.cf
	ghdl -e spi_slave_tb;
	ghdl -r spi_slave_tb --wave=spi_slave_tb.ghw;

src/spi_slave.v: spi_slave.vhdl
	test -d ./src || mkdir src
	docker run --rm -v $(shell pwd):/home -w /home hdlc/ghdl:yosys yosys -m ghdl -p 'ghdl ./spi_slave.vhdl -e spi_slave; write_verilog spi_slave.v';
	mv spi_slave.v ./src

OPENLANE_DSGS_DIR = $(OPENLANE_DIR)/designs
.PHONY: openlane-run
openlane-run: ./config.tcl ./pin_order.cfg src/spi_slave.v
	test -d $(OPENLANE_DSGS_DIR) || exit 1;
	test -d $(OPENLANE_DSGS_DIR)/spi_slave || mkdir $(OPENLANE_DSGS_DIR)/spi_slave;
	cp ./config.tcl ./pin_order.cfg $(OPENLANE_DSGS_DIR)/spi_slave;
	cp -r ./src $(OPENLANE_DSGS_DIR)/spi_slave;
	rm -rf $(OPENLANE_DSGS_DIR)/designs/spi_slave/runs;
	make -C $(OPENLANE_DIR) mount OPENLANE_TAG=$(OPENLANE_TAG);

clean:
	rm work-obj93.cf;
	rm spi_slave_tb.ghw;
	rm -rf ./src;
	rm -rf ./runs;
