----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.07.2018 12:30:15
-- Design Name: 
-- Module Name: nexys_hdmi_bench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flySimulator_bench is
--  Port ( );
end flySimulator_bench;

architecture Behavioral of flySimulator_bench is

component flySimulator is Port(
    CLK: in std_logic;
    hdmi_tx_clk_n: out std_logic;
    hdmi_tx_clk_p: out std_logic;
    hdmi_tx_n: out std_logic_vector (2 downto 0);
    hdmi_tx_p: out std_logic_vector (2 downto 0);
    LED: out std_logic_vector (7 downto 0):=(others => '0');
    ja: out std_logic_vector(7 downto 0):=(others => '0');
    xadc_p		   : in std_logic;
    xadc_n         : in std_logic;
    vauxp1    : in std_logic;
    vauxn1    : in std_logic;
    RsRx: in std_logic;
    RsTx: out std_logic
);
end component;


signal RsTx: std_logic:='0';

signal clk_in: std_logic:='0';

constant clk_in_half_period : time := 1 ns;

signal hdmi_clk_n, hdmi_clk_p: std_logic:= '0';

signal hdmi_n, hdmi_p: std_logic_vector (2 downto 0):= (others => '0');
signal sigLed: std_logic_vector(7 downto 0);
signal sw_in: std_logic_vector(7 downto 0):= (others => '0');

signal A: std_logic:= '0';

begin

uut: flySimulator port map(
    clk => clk_in,
    hdmi_tx_clk_n => hdmi_clk_n,
    hdmi_tx_clk_p => hdmi_clk_p,
    hdmi_tx_n => hdmi_n,
    hdmi_tx_p => hdmi_p,
    LED => sigLed,
    xadc_p => '0',
    xadc_n => '0',       
    vauxp1 => '0',    
    vauxn1 => '0',
    RsRx => '0',
    RsTx => RsTx
);

clk_in <= not clk_in after clk_in_half_period;

    stimulate_spi_start: process
    begin
        -- Wait for 500 microseconds
        wait for 5000 ns;
        
        -- Stimulation: Set spi_start to '1' for one clock cycle
        -- Note: You should replace `spi_start` with the correct signal name connected to the uut.
        A <= '1';
        wait until rising_edge(clk_in);
        A <= '0';

        -- Optionally, finish the simulation here.
        wait; -- Uncomment this if you want to terminate the simulation after this stimulation
    end process stimulate_spi_start;

end Behavioral;
