library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity spi_slave is

    generic(
        WORD: natural := 8
    );

    port (
        
        -- serial interface --
        ss:    in  std_logic;
        sclk:  in  std_logic;
        sdi:   in  std_logic;
        
        -- reset --
        reset: in std_logic;

        -- parallel interface --
        data:  out std_logic_vector(WORD-1 downto 0)
    );

end entity spi_slave;

architecture spi_slave_arch of spi_slave is

    signal buffer_reg: std_logic_vector(WORD-1 downto 0);

begin

    rx: process(sclk, reset)
    begin

        if reset = '1' then
            
            buffer_reg <= (others => '0');

        elsif rising_edge(sclk) and ss = '0' then

            buffer_reg <= buffer_reg(WORD-2 downto 0) & sdi; 

        end if;            

    end process rx;

    data <= buffer_reg;
    
end architecture spi_slave_arch;