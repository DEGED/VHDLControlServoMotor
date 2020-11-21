----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:08:26 03/21/2012 
-- Design Name: 
-- Module Name:    divider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
	GENERIC(N : INTEGER := 500); --500 para 10us
	PORT (clk: in std_logic;
			clk_10us : out std_logic);
end clock_divider;

architecture Behavioral of clock_divider is
SIGNAL cnt : INTEGER RANGE 0 to N;
begin
	process(clk)
		begin
		if clk'event and clk = '1' then
		
				if (cnt < N/2) then
					clk_10us <= '0';
					cnt <= cnt + 1;
				elsif (cnt < N) then
					clk_10us <= '1';
					cnt <= cnt + 1;
				else
					cnt <= 0;
					clk_10us <= '1';
				end if;
		end if;
	end process;
end Behavioral;



