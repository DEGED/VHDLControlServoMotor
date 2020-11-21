--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : test_receiver.vhf
-- /___/   /\     Timestamp : 03/30/2012 00:41:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/ICESI/LOGICA DIGITAL/LaboratorioLogica/ControlServoMotor/test_receiver.vhf" -w "D:/ICESI/LOGICA DIGITAL/LaboratorioLogica/ControlServoMotor/test_receiver.sch"
--Design Name: test_receiver
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

entity test_receiver is
   port ( CLK_50MHZ     : in    std_logic; 
          RS232_DCE_RXD : in    std_logic; 
          LED           : out   std_logic_vector (7 downto 0));
end test_receiver;

architecture BEHAVIORAL of test_receiver is
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


