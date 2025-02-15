----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.07.2018 09:53:32
-- Design Name: 
-- Module Name: nexys_hdmi - Behavioral
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
-- 800 x 600@60Hz Pixel clock 40Mhz
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flySimulator is Port(
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
end flySimulator;

architecture Behavioral of flySimulator is

constant SCALE_FACTOR : integer := 10;

component clk_wiz_0 is port(
	clk_in1 : in std_logic;
	clk_out1 : out std_logic;
	reset: in std_logic);
end component;

component rxByteUart is 
	Generic(
	   TIMEOUT_THRESHOLD: integer);
	Port (
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        uart_start_out    : in  STD_LOGIC;
        uart_byte_out: in std_logic_vector(7 downto 0);
        si_rotate_screen_uart : out STD_LOGIC_VECTOR(1 downto 0);
        uart_vid_Data: out STD_LOGIC_VECTOR(23 downto 0);
        uart_integer_rotate_speed: out integer range 0 to 255;
        uart_integer_pwm_speed: out integer range 0 to 255;
        uart_mem_offset: out integer range 0 to 4095;
        uart_on_off: out std_logic;
        pwmOnOff: out std_logic;
        timeout_flag: out std_logic);
end component;        

component pwm is port(
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        duty    : in  integer range 0 to 255;
        pwm_out : out STD_LOGIC);
end component;

component clockDivider is
	Generic(
	   DIV_FACTOR: integer);
	Port (
        clk_in  : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        clk_out : out STD_LOGIC
    );
end component;

component vga_800 is port(
	clk_vga: in std_logic;
	horizontal_counter : out integer range 0 to 2047;
	vertical_counter   : out integer range 0 to 2047;
    hs_out   : out std_logic;
    vs_out   : out std_logic;
    v_visible: out std_logic;
    h_visible: out std_logic;  vid_screen_h: out integer range 0 to 2047;
    vid_screen_v: out integer range 0 to 2047;
    frame_out: out std_logic;
    pVde: out std_logic
    );
end component;

component rgb2dvi_0 is Port(
    vid_pData: in std_logic_vector (23 downto 0);
    vid_pHSync: in std_logic;
    vid_pVSync: in std_logic;
    vid_pVDE: in std_logic;
    
    aRst: in std_logic;
    PixelClk: in std_logic;
    
    TMDS_Clk_p: out std_logic;
    TMDS_Clk_n: out std_logic;
    TMDS_Data_p: out std_logic_vector (2 downto 0);
    TMDS_Data_n: out std_logic_vector (2 downto 0));
end component;

component blk_mem_gen_0 is port (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(799 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(799 DOWNTO 0)
  );
end component;

component rxTxUart is
	Generic(
	clk_freq: integer;
	baudrate: integer);
	Port (
	clk : in std_logic;
	start_snd: in std_logic;
	start_rcv: out std_logic;
	byte_snd : in std_logic_vector(7 downto 0);
	byte_rcv : out std_logic_vector(7 downto 0);
	tx : out std_logic;
	rx : in std_logic;
	ready : out std_logic
	);
end component;

component xadc_wiz_0 is port(
        daddr_in        : in  STD_LOGIC_VECTOR (6 downto 0);     -- Address bus for the dynamic reconfiguration port
        den_in          : in  STD_LOGIC;                         -- Enable Signal for the dynamic reconfiguration port
        di_in           : in  STD_LOGIC_VECTOR (15 downto 0);    -- Input data bus for the dynamic reconfiguration port
        dwe_in          : in  STD_LOGIC;                         -- Write Enable for the dynamic reconfiguration port
        do_out          : out  STD_LOGIC_VECTOR (15 downto 0);   -- Output data bus for dynamic reconfiguration port
        drdy_out        : out  STD_LOGIC;                        -- Data ready signal for the dynamic reconfiguration port
        dclk_in         : in  STD_LOGIC;                         -- Clock input for the dynamic reconfiguration port
        reset_in        : in  STD_LOGIC;                         -- Reset signal for the System Monitor control logic
        vauxp1          : in  STD_LOGIC;                         -- Auxiliary Channel 3
        vauxn1          : in  STD_LOGIC;
        busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
        channel_out     : out  STD_LOGIC_VECTOR (4 downto 0);    -- Channel Selection Outputs
        eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
        eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
        alarm_out       : out STD_LOGIC;                         -- OR'ed output of all the Alarms
        vp_in           : in  STD_LOGIC;                         -- Dedicated Analog Input Pair
        vn_in           : in  STD_LOGIC);
end component;

constant mem_size : integer := 800; -- If you're rotating data row by row

-- SPI
signal spi_start: std_logic:='0';           -- start SPI transfer
signal sclk: std_logic:='0';           -- serial clock
signal mosi: std_logic:='0';           -- master out, slave in
signal miso: std_logic:='0';            -- master in, slave out
signal ss: std_logic:='0';             -- slave select

signal data_to_send: STD_LOGIC_VECTOR(15 downto 0); -- data to be sent
signal data_received: STD_LOGIC_VECTOR(15 downto 0); -- received data

-- Clk
signal clk_out: std_logic:='0';
signal clk_pwm: std_logic:='0';

-- PWM
signal rstSignal: std_logic:='0';
signal pwmOnOff: std_logic:='0';
signal pwmSignal: std_logic:='0';

-- open loop rotation
signal integer_rotate_speed: integer range 0 to 255:= 0;
signal uart_integer_rotate_speed: integer range 0 to 255:= 0;
signal uart_integer_pwm_speed: integer range 0 to 255:= 128;

-- Video
signal vid_Data: STD_LOGIC_VECTOR(23 downto 0):= (others => '1');
signal vid_Hsync, vid_Vsync, vid_VDE: std_logic:= '0';

-- VGA
signal hc_v, vc_v: integer range 0 to 2047:= 0;
signal frame, vid_h_visible, vid_v_visible: std_logic:='0';

-- signals RAM
signal mem_ena : STD_LOGIC:= '0';
signal mem_wea : STD_LOGIC_VECTOR(0 DOWNTO 0):= "0";
signal mem_addra : STD_LOGIC_VECTOR(11 DOWNTO 0):= (others => '0');
signal mem_dina : STD_LOGIC_VECTOR(799 DOWNTO 0):= (others => '0');

signal mem_enb : STD_LOGIC:= '0';
signal mem_addrb : STD_LOGIC_VECTOR(11 DOWNTO 0):= (others => '0');
signal mem_doutb : STD_LOGIC_VECTOR(799 DOWNTO 0):= (others => '0');

signal si_state_mem: integer range 0 to 3:= 0;

-- picture_read
signal si_state_vga: integer range 0 to 7:= 0;
--signal si_screen: integer range 0 to 3:= 0;
signal mem_offset: integer range 0 to 4095:= 0;

-- change picture
signal si_buffer: std_logic_vector (799 downto 0):= (799 downto 0 => '1');
signal vid_screen_h_int: integer range 0 to 2047:= 0;
signal vid_screen_v_int: integer range 0 to 2047:= 0;

-- adValue
signal sig_sign: std_logic:='0';
signal uart_sig_sign: std_logic:='0';

-- rotate picture
signal si_state_frame: integer range 0 to 7:= 0;
signal si_state_ad_frame: integer range 0 to 15:= 0;
signal si_rotate_screen: std_logic_vector(1 downto 0):= (others => '0');
signal si_ad_change_buffer: std_logic_vector (799 downto 0):= (others => '0');
signal rotate_value_ad: std_logic_vector(11 downto 0):=(others => '0');
signal si_ad_value_diff: integer range -4096 to 4095:= 0;
signal si_ad_value: integer range -4096 to 4095:= 0;
signal si_ad_value_vector: std_logic_vector(12 downto 0):= (others => '0');
signal si_ad_value_sign: std_logic:= '0';
signal si_ad_value_bit: std_logic_vector(11 downto 0):= (others => '0');
signal si_ad_calc_picture: integer range 0 to 4095:= 0;
signal si_ad_value_multi: integer range 0 to 4095:= 0;
signal si_ad_value_picture: integer:= 0;
signal si_value_pixel: integer:= 0;
signal si_value_pixel_real: real := 0.0;
--signal si_value_pixel: integer range -2048 to 2047:= 0;
signal rotation_pointer : integer range 0 to mem_size-1 := 0; -- mem_size should match your memory size

-- Assuming these are signals or variables
signal scaled_operation : integer;
signal si_value_pixel_scaled : integer := si_value_pixel * SCALE_FACTOR; -- Scaled version

-- UART
signal uart_start_in:std_logic:= '0';
signal uart_start_out: std_logic:= '0';
signal ready_out:std_logic:='0';
signal si_uart_byte: integer range 0 to 255:= 0;
signal uart_byte_out, uart_byte_in: std_logic_vector(7 downto 0):=(others => '0');
signal si_rotate_screen_uart: std_logic_vector(1 downto 0):= (others => '0');
signal si_state_uart: integer range 0 to 7:= 0;
signal uart_vid_Data: STD_LOGIC_VECTOR(23 downto 0):= (others => '1');
signal timeout_flag: std_logic:= '0';

-- AD Converter
signal eoc_xadc: std_logic:='0';
signal eos_xadc: std_logic:='0';
signal drdy_xadc: std_logic:='0';
signal do_xadc: std_logic_vector(15 downto 0):=(others => '0'); 

-- UART Tx
signal si_state: integer range 0 to 15:= 0;
signal si_calc_uart: integer range 0 to 7:= 0;
signal value_ad: std_logic_vector(15 downto 0):=(others => '0');
signal value_pixel: std_logic_vector(11 downto 0):=(others => '0');
signal uart_do_xadc: std_logic_vector(15 downto 0):=(others => '0');
signal uart_value_ad: std_logic_vector(11 downto 0):=(others => '0');
signal uart_mem_offset: integer range 0 to 4095:= 0;
signal uart_on_off: std_logic:= '0';

begin

blk_mem: blk_mem_gen_0 port map(
    clka => clk_out,
    ena => mem_ena,
    wea => mem_wea,
    addra => mem_addra,
    dina => mem_dina,
    clkb => clk_out,
    enb => mem_enb,
    addrb => mem_addrb,
    doutb => mem_doutb);
    
rxByteUart0: rxByteUart 
    GENERIC MAP(
        TIMEOUT_THRESHOLD => 40000000) -- Frequenz �ndern!!!!
    port map(
        clk => clk_out,
        rst => rstSignal,
        uart_start_out => uart_start_out,
        uart_byte_out => uart_byte_out,
        si_rotate_screen_uart => si_rotate_screen_uart,
        uart_vid_Data => uart_vid_Data,
        uart_integer_rotate_speed => uart_integer_rotate_speed,
        uart_integer_pwm_speed => uart_integer_pwm_speed,
        uart_mem_offset => uart_mem_offset,
        uart_on_off => uart_on_off,
        pwmOnOff => pwmOnOff,
        timeout_flag => timeout_flag);

pll0: clk_wiz_0 port map(
    clk_in1 => CLK,
    clk_out1 => clk_out,
    reset => rstSignal);
    
rgb2dvi: rgb2dvi_0 port map(
        PixelClk => clk_out,
        vid_pData => vid_Data,
        vid_pHSync => vid_Hsync,
        vid_pVSync => vid_Vsync,
--        vid_pVDE => '1',
        vid_pVDE => vid_VDE,
        aRst => rstSignal,
        TMDS_Clk_n => hdmi_tx_clk_n,
        TMDS_Clk_p => hdmi_tx_clk_p,
        TMDS_Data_n => hdmi_tx_n,
        TMDS_Data_p => hdmi_tx_p);
        
vga0: vga_800 port map(
        clk_vga => clk_out,
        horizontal_counter => hc_v,
        vertical_counter => vc_v,
        hs_out => vid_Hsync,
        vs_out => vid_Vsync,
        pVde => vid_VDE,
        h_visible => vid_h_visible,
        v_visible => vid_v_visible,
        vid_screen_v => vid_screen_v_int,
        vid_screen_h => vid_screen_h_int,
        frame_out => frame);
       
clockDivider0: clockDivider       
        GENERIC MAP(
        DIV_FACTOR => 39062) -- Clock Divider change f_clk / (256/f_blink) example 40 000 000 Hz / (256 * 4 Hz)!!!!
        PORT MAP(
        clk_in => clk_out,
        rst => rstSignal,
        clk_out => clk_pwm);  
        
pwm0: pwm
        port map(
        clk => clk_pwm,
        rst => rstSignal,
        duty => uart_integer_pwm_speed,
        pwm_out => pwmSignal);
        
uart0: rxTxUart
        GENERIC MAP(
        clk_freq => 40000000, -- Frequenz �ndern!!!!
        baudrate => 115200)
        PORT MAP(
        clk => clk_out,
        ready => ready_out,
        start_snd => uart_start_in,
        start_rcv => uart_start_out,
        tx => RsTx,
        rx => RsRx,
        byte_rcv => uart_byte_out,
        byte_snd => uart_byte_in);       

xadc: xadc_wiz_0 port map(
        daddr_in    => "0010001", -- 19,
        den_in        => eoc_xadc, --eoc_xadc
        di_in        => (others => '0'),
        dwe_in        => '0',
        do_out        => do_xadc, -- Daten
        drdy_out    => drdy_xadc, -- wird verwendet um Daten zu erfassen
        dclk_in        => clk_out,
        reset_in     => '0',
        vauxp1        => vauxp1,
        vauxn1        => vauxn1,
        busy_out    => open,
        channel_out    => open, --channel_xadc
        eoc_out        => eoc_xadc,
        eos_out        => eos_xadc,
        alarm_out    => open,
        vp_in        => xadc_p,
        vn_in        => xadc_n); 
        
process begin

LED(7 downto 0) <= std_logic_vector(to_unsigned(uart_integer_pwm_speed, 8));
--LED(7 downto 0) <= std_logic_vector(to_unsigned(integer_rotate_speed, 8));
--LED(1) <= timeout_flag;
--LED(0) <= pwmOnOff and pwmSignal;
ja(0) <= pwmOnOff and pwmSignal;
--ja(0) <= sclk;
--ja(1) <= mosi;
--ja(4) <= ss;
--data_to_send <= x"0C70";

wait until rising_edge(clk_out);

-- ####################### SPI #############################
if (frame = '1') then
    spi_start <= '1';
else
    spi_start <= '0';
end if;

-- ####################### Calculate frame uart ########################### 
    if (drdy_xadc = '1') and (si_state = 0) and (frame = '0') and (si_calc_uart = 0) then
            uart_do_xadc <= do_xadc;
            si_calc_uart <= 1;
    else
    end if;
    
    if (si_calc_uart = 1) then 
            value_ad(5 downto 0) <= uart_do_xadc(9 downto 4);
            value_ad(7 downto 6) <= "00";
            value_ad(13 downto 8) <= uart_do_xadc(15 downto 10);
            value_ad(15 downto 14) <= "01";  
            uart_value_ad <= uart_do_xadc(15 downto 4);
            si_calc_uart <= 0;
    else
    end if;

--###################################### uart-frame ############################################

    if ((frame = '1') and (ready_out = '1') and (si_state = 0) and (uart_start_in = '0') and (uart_on_off = '1')) then
        uart_byte_in <= std_logic_vector(uart_do_xadc(11 downto 4));
        rotate_value_ad <= uart_value_ad;
        uart_start_in <= '1';
        si_state <= 1;
    else
    end if;
    
    if (si_state = 1) then
        --spi_start <= '1';
        uart_start_in <= '0';
        si_state <= 2;
    else
    end if;
     
    if ((ready_out = '1') and (si_state = 2)) then
        uart_byte_in(3 downto 0) <= std_logic_vector(uart_do_xadc(15 downto 12));
        uart_byte_in(7 downto 4) <= x"0";
        uart_start_in <= '1';
        si_state <= 3;
     else
     end if;
     
    if (si_state = 3) then
        --spi_start <= '0';
        uart_start_in <= '0';
        si_state <= 4;
    else
    end if;
     
     if ((ready_out = '1') and (si_state = 4)) then
        uart_byte_in <= std_logic_vector(value_pixel(7 downto 0));
        uart_start_in <= '1';
        si_state <= 5;
     else
     end if;
     
    if (si_state = 5) then
        uart_start_in <= '0';
        si_state <= 6;
    else
    end if;
     
     if ((ready_out = '1') and (si_state = 6)) then
        uart_byte_in(3 downto 0) <= std_logic_vector(value_pixel(11 downto 8));
        uart_byte_in(7 downto 4) <= x"0";
        uart_start_in <= '1';
        si_state <= 7;
     else
     end if;
          
     if (si_state = 7) then
       uart_start_in <= '0';
       si_state <= 8;
        
       value_ad <= (others => '0');
     else
     end if;
     
     if ((ready_out = '1') and (si_state = 8)) then
         uart_byte_in <= x"0A";
         uart_start_in <= '1';
         si_state <= 9;
     else
     end if;
     
     if (si_state = 9) then
       uart_start_in <= '0';
       si_state <= 0;
     else
     end if;

--##################################### screen update #################################################	
if (si_state_vga = 0) and (vid_v_visible = '1') and (hc_v = 1) then
    mem_addrb <= std_logic_vector(to_unsigned(vid_screen_v_int + mem_offset,mem_addrb'length));
    si_state_vga <= 1;
else
end if;

if (si_state_vga = 1) then
    mem_enb <= '1';
    si_state_vga <= 2;
else
end if;

if (si_state_vga = 2) then
    si_state_vga <= 3;
else
end if;

if (si_state_vga = 3) then
    si_state_vga <= 4;
else
end if;

if (si_state_vga = 4) then
    si_buffer <= mem_doutb;
    si_state_vga <= 5;
else
end if;

if (si_state_vga = 5) then 
    mem_enb <= '0';
    si_state_vga <= 6;
else
end if;

if (si_state_vga = 6) and (hc_v = 216) and (vid_v_visible = '1') then 
    si_state_vga <= 7;
else
end if;

if (si_state_vga = 7) then
    if (vid_h_visible = '0') then
        si_state_vga <= 0;
    else
        if (si_buffer(vid_screen_h_int) = '1') then
            vid_Data <= uart_vid_Data;
        else
            -- Gray 50%
            vid_Data <= x"7f7f7f";
            -- Black
            --vid_Data <= (others => '0');
        end if;
    end if;
else
end if;

--##################################### screen rotate #################################################	
if (si_state_frame = 0) and (hc_v = 1) then

    if (vid_v_visible = '1') then
        si_state_frame <= 1;
    else
    end if;
    
    if (vid_v_visible = '0') and (vid_h_visible = '0') then
        si_rotate_screen <= si_rotate_screen_uart;
        mem_offset <= uart_mem_offset;
        sig_sign <= uart_sig_sign;
        integer_rotate_speed <= uart_integer_rotate_speed;
    else
    end if;
    
else
end if;

if (si_state_frame = 1) and (si_state_vga = 7) then
    case si_rotate_screen is
    when "00" =>
            if (sig_sign = '1') then 
                if (si_ad_value_sign = '0') and (si_ad_value_picture > 0) then
                    si_ad_change_buffer <= std_logic_vector(rotate_left(unsigned(si_buffer), si_ad_value_picture*integer_rotate_speed));
                else
                    si_ad_change_buffer <= std_logic_vector(rotate_right(unsigned(si_buffer), si_ad_value_picture*integer_rotate_speed));
                end if;
            else
            end if;

            if (sig_sign = '0') then 
                if (si_ad_value_sign = '0') and (si_ad_value_picture > 0) then
                    si_ad_change_buffer <= std_logic_vector(rotate_right(unsigned(si_buffer), ((si_ad_value_picture*integer_rotate_speed) / SCALE_FACTOR)));
                else
                    si_ad_change_buffer <= std_logic_vector(rotate_left(unsigned(si_buffer), ((si_ad_value_picture*integer_rotate_speed) / SCALE_FACTOR)));
                end if;
            else
            end if;
            
        mem_addra <= mem_addrb; 
        si_state_frame <= 2;
    when "01" =>
        si_ad_change_buffer <= std_logic_vector(rotate_right(unsigned(si_buffer), (integer_rotate_speed / SCALE_FACTOR)));
        --insert switch buttons
        --si_ad_change_buffer <= std_logic_vector(rotate_right(unsigned(si_buffer), 10));
        mem_addra <= mem_addrb; 
        si_state_frame <= 2;   
    when "10" =>
        si_ad_change_buffer <= std_logic_vector(rotate_left(unsigned(si_buffer), (integer_rotate_speed / SCALE_FACTOR)));
        --insert switch buttons
        --si_ad_change_buffer <= std_logic_vector(rotate_left(unsigned(si_buffer), 10));
        mem_addra <= mem_addrb; 
        si_state_frame <= 2;  
    when others => 
        si_state_frame <= 2;
end case;
else
end if;

if (si_state_frame = 2) then
    mem_ena <= '1';
    mem_wea <= "1";   
    si_state_frame <= 3; 
else
end if;

if (si_state_frame = 3) then
    mem_dina <= si_ad_change_buffer; 
    si_state_frame <= 4;
else
end if;

if (si_state_frame = 4) then
    mem_ena <= '0';
    mem_wea <= "0";
    si_state_frame <= 0;    
else
end if;

 --################################ calculate new frame old #########################################
    
        if (si_state_ad_frame = 0) and (frame = '1') then
            si_ad_value <= to_integer(signed(rotate_value_ad(11 downto 0))) +  si_ad_value_diff;
            si_state_ad_frame <= 1;
        else
        end if;
        
        if (si_state_ad_frame = 1) then
            si_ad_value_vector <= std_logic_vector(to_signed(si_ad_value,13));
            si_state_ad_frame <= 2;
        else
        end if;
        
        if (si_state_ad_frame = 2) then
            si_ad_value_sign <= si_ad_value_vector(12);
            si_ad_value_bit <= si_ad_value_vector(11 downto 0);
            si_state_ad_frame <= 3;
        else
        end if;
        
        if (si_state_ad_frame = 3) then
            if (si_ad_value_sign = '0') then
                si_ad_calc_picture <= to_integer(unsigned(si_ad_value_bit));
                si_state_ad_frame <= 4;
            else
                si_ad_calc_picture <= to_integer(unsigned(not si_ad_value_bit)) + 1;
                --si_ad_calc_picture <= to_integer(unsigned("111111111111" xor si_ad_value_bit)) + 1;
                si_state_ad_frame <= 4;
            end if;
        else
        end if;
        
        if (si_state_ad_frame = 4) then
--            si_ad_value_picture <= si_ad_calc_picture / to_integer(unsigned(sw(15 downto 10)));
            si_ad_value_picture <= si_ad_calc_picture / 8;
            si_state_ad_frame <= 5;
        else
        end if;  
        
        if (si_state_ad_frame = 5) then
--            si_ad_value_multi <= si_ad_value_picture * to_integer(unsigned(sw(15 downto 10)));
            si_ad_value_multi <= si_ad_value_picture * 8;
            si_state_ad_frame <= 6;
        else
        end if;  
        
        if (si_state_ad_frame = 6) then
            si_ad_value_diff <= si_ad_calc_picture - si_ad_value_multi;
            si_state_ad_frame <= 7;
        else
        end if;  
        
        
        if (si_state_ad_frame = 7) then
            if (si_ad_value_sign = '1') then
                si_ad_value_diff <= to_integer(unsigned(not std_logic_vector(to_unsigned(si_ad_value_diff, 13)))) + 1;
                --si_ad_value_diff <= to_integer(unsigned("1111111111111" xor std_logic_vector(to_unsigned(si_ad_value_diff,13)))) + 1;
            else
            end if; 
        si_state_ad_frame <= 8;       
        else
        end if; 
        
        if (si_state_ad_frame = 8) then
            case si_rotate_screen is
                when "00" =>
                    if (si_ad_value_sign = '0') then
                        si_value_pixel_scaled <= si_value_pixel_scaled - (si_ad_value_picture * integer_rotate_speed);
                        --si_value_pixel_real <= real(si_value_pixel) - real((si_ad_value_picture*integer_rotate_speed)/10);
                        --si_value_pixel <= si_value_pixel - si_ad_value_picture*integer_rotate_speed;
                    else
                        si_value_pixel_scaled <= si_value_pixel_scaled + (si_ad_value_picture * integer_rotate_speed);
                        --si_value_pixel_real <= real(si_value_pixel) + real((si_ad_value_picture*integer_rotate_speed)/10);
                        --si_value_pixel <= si_value_pixel + si_ad_value_picture*integer_rotate_speed;
                    end if; 
                    si_state_ad_frame <= 9;
                when "01" =>
                    si_value_pixel_scaled <= si_value_pixel_scaled + integer_rotate_speed;
                    --si_value_pixel_real <= real(si_value_pixel) + real((integer_rotate_speed)/10);
                    --si_value_pixel <= si_value_pixel + integer_rotate_speed;
                    si_state_ad_frame <= 9;   
                when "10" =>
                    si_value_pixel_scaled <= si_value_pixel_scaled - integer_rotate_speed;
                    --si_value_pixel_real <= real(si_value_pixel) - real((integer_rotate_speed)/10);
                    --si_value_pixel <= si_value_pixel - integer_rotate_speed;
                    si_state_ad_frame <= 9;  
                when others => 
                    si_state_ad_frame <= 0;
            end case;    
        else
        end if; 
        
--        if (si_state_ad_frame = 9) then
--            if (floor(si_value_pixel_real) > 799*) then
--                si_value_pixel <= floor(si_value_pixel_real) - 800;
--            else
--                if (floor(si_value_pixel_real) < 0) then
--                    si_value_pixel <= 800 + floor(si_value_pixel_real);
--                else
--                end if;
--            end if; 
--        si_state_ad_frame <= 10;       
--        else
--        end if;  
        
--        if (si_state_ad_frame = 10) then
--            value_pixel <= std_logic_vector(to_signed(floor(si_value_pixel_real),12));
--            si_state_ad_frame <= 0;       
--        else
--        end if;    

    if (si_state_ad_frame = 9) then
        if (si_value_pixel_scaled > 7990) then
            si_value_pixel_scaled <= si_value_pixel_scaled - 8000;
        else
            if (si_value_pixel_scaled < 0) then
                si_value_pixel_scaled <= 8000 + si_value_pixel_scaled;
            end if;
        end if; 
        si_state_ad_frame <= 10;       
    end if;  

    if (si_state_ad_frame = 10) then
        value_pixel <= std_logic_vector(to_signed((si_value_pixel_scaled / SCALE_FACTOR), 12)); -- Scale down when assigning
        si_state_ad_frame <= 0;       
    end if;        

end process;        
end Behavioral;
