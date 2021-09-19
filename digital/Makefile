.PHONY: all

all: work-obj93.cf spi_slave_tb.ghw

work-obj93.cf: spi_slave.vhdl spi_slave_tb.vhdl
	ghdl -a spi_slave.vhdl;
	ghdl -a spi_slave_tb.vhdl;

spi_slave_tb.ghw: work-obj93.cf
	ghdl -e spi_slave_tb;
	ghdl -r spi_slave_tb --wave=spi_slave_tb.ghw;

clean:
	rm work-obj93.cf
	rm spi_slave_tb.ghw