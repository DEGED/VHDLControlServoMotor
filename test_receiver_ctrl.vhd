-- Copyright (c) 2006 Frank Buss (fb@frank-buss.de)
-- See license.txt for license
--
-- See readme.html for documentation

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_receiver_ctrl is
  port(
    clk_50mhz: in std_logic;
 	 rs232_receiver_ack: out std_logic:= '0';
	 rs232_receiver_dat: in std_logic_vector(7 downto 0); -- := (others => '0');
	 rs232_receiver_stb: in std_logic := '0';
	 
	 led: out std_logic_vector(7 downto 0)	 
	 );
	 
end entity test_receiver_ctrl;

architecture rtl of test_receiver_ctrl is
  constant system_speed: natural := 50e6;
  constant baudrate: natural := 115200;

  signal led_latch: std_logic_vector(7 downto 0); 
  signal counter: natural range 0 to (system_speed / 2) := 0;
  
  
  type state_type is (
    wait_for_command,
    wait_for_strobe );

  signal state: state_type := wait_for_command;
  --signal echo: std_logic;
  
begin

 
process(clk_50mhz)
    --variable digit: natural range 0 to 15;
	 
  begin
    if rising_edge(clk_50mhz) then
	 
      case state is
        -- read command from RS232 port
        when wait_for_command =>
          if rs232_receiver_stb = '1' then
            state <= wait_for_strobe;
            rs232_receiver_ack <= '1';
				led_latch(2)<='1';
          end if;
			 
        when wait_for_strobe =>
          if rs232_receiver_stb <= '0' then
            rs232_receiver_ack <= '0';
            state <= wait_for_command;
				led_latch(7 downto 0 ) <= rs232_receiver_dat;
				--led_latch(3)<='1';
            --echo <= '1';
			 else
				state <= wait_for_strobe;
				led_latch(1)<='1';
          end if;

       end case;
  
--      -- "test" should change with 1 Hz
--      if counter = 0 then
--        led_latch(0) <= not led_latch(0);
--        counter <= system_speed / 2;
--      else
--        counter <= counter - 1;
--      end if;
		
    end if;
  end process;

  led <= led_latch;
  
end architecture rtl;
