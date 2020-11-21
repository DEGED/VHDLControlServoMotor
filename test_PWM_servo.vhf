--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : test_PWM_servo.vhf
-- /___/   /\     Timestamp : 03/30/2012 00:41:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/ICESI/LOGICA DIGITAL/LaboratorioLogica/ControlServoMotor/test_PWM_servo.vhf" -w "D:/ICESI/LOGICA DIGITAL/LaboratorioLogica/ControlServoMotor/test_PWM_servo.sch"
--Design Name: test_PWM_servo
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity test_receiver_MUSER_test_PWM_servo is
   port ( CLK_50MHZ     : in    std_logic; 
          RS232_DCE_RXD : in    std_logic; 
          LED           : out   std_logic_vector (7 downto 0));
end test_receiver_MUSER_test_PWM_servo;

architecture BEHAVIORAL of test_receiver_MUSER_test_PWM_servo is
   attribute BOX_TYPE   : string ;
   signal SW0           : std_logic;
   signal XLXN_13       : std_logic;
   signal XLXN_65       : std_logic;
   signal XLXN_66       : std_logic_vector (7 downto 0);
   component rs232_receiver
      port ( ack_i : in    std_logic; 
             clk_i : in    std_logic; 
             rst_i : in    std_logic; 
             rx    : in    std_logic; 
             stb_o : out   std_logic; 
             dat_o : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component test_receiver_ctrl
      port ( clk_50mhz          : in    std_logic; 
             rs232_receiver_stb : in    std_logic; 
             rs232_receiver_dat : in    std_logic_vector (7 downto 0); 
             rs232_receiver_ack : out   std_logic; 
             led                : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : rs232_receiver
      port map (ack_i=>SW0,
                clk_i=>CLK_50MHZ,
                rst_i=>XLXN_13,
                rx=>RS232_DCE_RXD,
                dat_o(7 downto 0)=>XLXN_66(7 downto 0),
                stb_o=>XLXN_65);
   
   XLXI_5 : GND
      port map (G=>XLXN_13);
   
   XLXI_27 : test_receiver_ctrl
      port map (clk_50mhz=>CLK_50MHZ,
                rs232_receiver_dat(7 downto 0)=>XLXN_66(7 downto 0),
                rs232_receiver_stb=>XLXN_65,
                led(7 downto 0)=>LED(7 downto 0),
                rs232_receiver_ack=>SW0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity test_PWM_servo is
   port ( CLK_50MHZ     : in    std_logic; 
          RS232_DCE_RXD : in    std_logic; 
          IO7           : out   std_logic; 
          IO8           : out   std_logic; 
          LED           : out   std_logic_vector (7 downto 0));
end test_PWM_servo;

architecture BEHAVIORAL of test_PWM_servo is
   signal XLXN_5        : std_logic;
   signal LED_DUMMY     : std_logic_vector (7 downto 0);
   component test_receiver_MUSER_test_PWM_servo
      port ( RS232_DCE_RXD : in    std_logic; 
             CLK_50MHZ     : in    std_logic; 
             LED           : out   std_logic_vector (7 downto 0));
   end component;
   
   component clock_divider
      port ( clk      : in    std_logic; 
             clk_10us : out   std_logic);
   end component;
   
   component PWM_motor8b
      port ( clk_10us : in    std_logic; 
             cmpPwm   : in    std_logic_vector (7 downto 0); 
             pwm_out  : out   std_logic; 
             pwm_Led  : out   std_logic);
   end component;
   
begin
   LED(7 downto 0) <= LED_DUMMY(7 downto 0);
   XLXI_1 : test_receiver_MUSER_test_PWM_servo
      port map (CLK_50MHZ=>CLK_50MHZ,
                RS232_DCE_RXD=>RS232_DCE_RXD,
                LED(7 downto 0)=>LED_DUMMY(7 downto 0));
   
   XLXI_2 : clock_divider
      port map (clk=>CLK_50MHZ,
                clk_10us=>XLXN_5);
   
   XLXI_3 : PWM_motor8b
      port map (clk_10us=>XLXN_5,
                cmpPwm(7 downto 0)=>LED_DUMMY(7 downto 0),
                pwm_Led=>IO7,
                pwm_out=>IO8);
   
end BEHAVIORAL;


