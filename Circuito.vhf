--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Circuito.vhf
-- /___/   /\     Timestamp : 11/12/2020 13:29:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/ControlServoMotor/Circuito.vhf" -w "C:/Users/prestamo/Desktop/Nueva carpeta/ControlServoMotor/ControlServoMotor/Circuito.sch"
--Design Name: Circuito
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

entity Circuito is
   port ( BTN_EAST  : in    std_logic; 
          BTN_NORTH : in    std_logic; 
          BTN_WEST  : in    std_logic; 
          clk       : in    std_logic; 
          PWM_led   : out   std_logic; 
          PWM_o     : out   std_logic);
end Circuito;

architecture BEHAVIORAL of Circuito is
   attribute BOX_TYPE   : string ;
   signal XLXN_7    : std_logic;
   signal XLXN_16   : std_logic;
   signal XLXN_17   : std_logic;
   signal XLXN_18   : std_logic;
   component debounce
      port ( D_IN  : in    std_logic; 
             clock : in    std_logic; 
             reset : in    std_logic; 
             Q_OUT : out   std_logic);
   end component;
   
   component PWM_test
      port ( clk     : in    std_logic; 
             RIGHT   : in    std_logic; 
             MIDDLE  : in    std_logic; 
             LEFT    : in    std_logic; 
             PWM_o   : out   std_logic; 
             PWM_led : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : debounce
      port map (clock=>clk,
                D_IN=>BTN_WEST,
                reset=>XLXN_7,
                Q_OUT=>XLXN_17);
   
   XLXI_2 : debounce
      port map (clock=>clk,
                D_IN=>BTN_NORTH,
                reset=>XLXN_7,
                Q_OUT=>XLXN_16);
   
   XLXI_3 : debounce
      port map (clock=>clk,
                D_IN=>BTN_EAST,
                reset=>XLXN_7,
                Q_OUT=>XLXN_18);
   
   XLXI_9 : PWM_test
      port map (clk=>clk,
                LEFT=>XLXN_17,
                MIDDLE=>XLXN_16,
                RIGHT=>XLXN_18,
                PWM_led=>PWM_led,
                PWM_o=>PWM_o);
   
   XLXI_10 : GND
      port map (G=>XLXN_7);
   
end BEHAVIORAL;


