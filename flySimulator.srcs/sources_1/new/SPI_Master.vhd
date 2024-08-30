library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master is
    generic (
        CLOCK_DIVIDER: integer := 16 -- SPI clock divider
    );
    port (
        clk: in std_logic;             -- system clock
        rst: in std_logic;             -- system reset
        start: in std_logic;           -- start SPI transfer

        -- SPI signals
        sclk_out: out std_logic;           -- serial clock
        mosi_out: out std_logic;           -- master out, slave in
        miso_in: in std_logic;            -- master in, slave out
        ss_out: out std_logic;             -- slave select

        data_to_send: in std_logic_vector(15 downto 0); -- data to be sent
        data_received: out std_logic_vector(15 downto 0) -- received data
    );
end SPI_Master;

architecture behavior of SPI_Master is
    signal counter: integer range 0 to CLOCK_DIVIDER-1 := 0;
    signal bit_counter: integer range 0 to 15 := 0;
    signal shift_reg_out: std_logic_vector(15 downto 0) := (others => '0');
    signal shift_reg_in: std_logic_vector(15 downto 0) := (others => '0');
    signal transfer_in_progress: std_logic := '0';
    signal sclk_internal: std_logic := '0';
    
begin
    process (clk, rst)
    begin
        if rst = '1' then
            sclk_internal <= '1'; -- Initial condition changed for SPI Mode 1
            sclk_out <= '1'; -- Initial condition changed for SPI Mode 1
            ss_out <= '1';
            transfer_in_progress <= '0';
            counter <= 0;
            bit_counter <= 0;
            shift_reg_out <= (others => '0');
            shift_reg_in <= (others => '0');
        elsif rising_edge(clk) then
            if start = '1' and transfer_in_progress = '0' then
                transfer_in_progress <= '1';
                ss_out <= '0';
                shift_reg_out <= data_to_send;
                bit_counter <= 0;
            end if;

            if transfer_in_progress = '1' then
                if counter = CLOCK_DIVIDER-1 then
                    if sclk_internal = '1' then
                        -- Shift data out on MOSI on rising edge (changed for SPI Mode 1)
                        mosi_out <= shift_reg_out(0);
                        sclk_internal <= '0';
                        sclk_out <= '0';
                        
                        bit_counter <= bit_counter + 1;
                        shift_reg_out <= '0' & shift_reg_out(15 downto 1);
                    else
                        -- Shift data in from MISO on falling edge (changed for SPI Mode 1)
                        shift_reg_in <= miso_in & shift_reg_in(15 downto 1);
                        
                        -- Toggle SPI clock
                        sclk_internal <= '1';
                        sclk_out <= '1';
                        
                        if bit_counter = 15 then
                            transfer_in_progress <= '0';
                            ss_out <= '1';
                        end if;
                    end if;
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    data_received <= shift_reg_in when transfer_in_progress = '0' else (others => '0');

end behavior;

