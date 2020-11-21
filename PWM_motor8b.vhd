----------------------------------------------------------------------------------
-- Programa que genera una señal PWM de 4 bits en el puerto pwm_out usando la señal
-- ck como base de tiempo.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use ieee.numeric_std.all;





entity PWM_motor8b is
    Port ( clk_10us 		: 	in  STD_LOGIC; 		--Entrada de reloj
           cmpPwm : 	in  STD_LOGIC_VECTOR(7 downto 0); 	--Valor de referencia para la salida
           pwm_out: 	out  STD_LOGIC;	--Salida pwm
			  pwm_Led: 	out  STD_LOGIC	--Salida pwm
			 );
end PWM_motor8b;

architecture Behavioral of PWM_motor8b is

-- Señal para controlar el valor del contador de control del módulo PWM de 4 bits
-- La frecuencia base del módulo pwm es igual a ck*2^4
--signal cntPwm: std_logic_vector(3 downto 0); 
--signal cnt: std_logic_vector(3 downto 0); 
--signal cnt : integer range 0 to 2000;
signal cnt : integer range 0 to 2047;
begin


	
 process(clk_10us)
		begin
		 if clk_10us'event and clk_10us='1' then
				
		
		end if;
		end process;
end Behavioral;

