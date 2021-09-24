library IEEE;
use IEEE.std_logic_1164.all;

entity spi_slave_tb is
end entity spi_slave_tb;

architecture spi_slave_tb_arch of spi_slave_tb is

    component spi_slave is
        generic(
            WORD: natural := 8
        );

        port (
            ss:    in  std_logic;
            sclk:  in  std_logic;
            sdi:   in  std_logic;
            reset: in  std_logic;
            data:  out std_logic_vector(WORD-1 downto 0)
        );
    end component spi_slave;

    signal ss:    std_logic;
    signal sclk:  std_logic;
    signal sdi:   std_logic;
    signal reset: std_logic;

    signal data:  std_logic_vector(7 downto 0);

    signal mdata: std_logic_vector(7 downto 0) := b"01000001";
    
    constant period: time := 50 ns;

    signal sim_started:  boolean;
    signal sim_finished: boolean;

begin

    uut: spi_slave generic map(
        WORD => 8
    ) port map (
        ss     => ss,
        sclk  => sclk,
        sdi   => sdi,
        reset => reset,
        data  => data
    );

    sim_started <= false, true after period;

    reset <= '1' when not sim_started else '0';

    sclk <= not sclk after period/2 when sim_started and not sim_finished else '0';

    ss <= '0' when sim_started and not sim_finished else '1';

    sdi <= mdata(7);

    sim_finished <= mdata = b"00000000";

    send_data: process(sclk)
    begin
        
        if falling_edge(sclk) then

            mdata <= mdata(6 downto 0) & '0';

        end if;

    end process send_data;
    
end architecture spi_slave_tb_arch;