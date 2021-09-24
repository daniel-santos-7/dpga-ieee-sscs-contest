.PHONY: all

all: work-obj93.cf spi_slave_tb.ghw spi_slave.v

work-obj93.cf: spi_slave.vhdl spi_slave_tb.vhdl
	ghdl -a spi_slave.vhdl;
	ghdl -a spi_slave_tb.vhdl;

spi_slave_tb.ghw: work-obj93.cf
	ghdl -e spi_slave_tb;
	ghdl -r spi_slave_tb --wave=spi_slave_tb.ghw;

spi_slave.v: spi_slave.vhdl
	docker run --rm -v $(shell pwd):/home -w /home hdlc/ghdl:yosys yosys -m ghdl -p 'ghdl ./spi_slave.vhdl -e spi_slave; write_verilog spi_slave.v';

clean:
	rm work-obj93.cf
	rm spi_slave_tb.ghw
	rm spi_slave.v
