--Código para controlar 4 posiciones para un servomotor Futaba

--Se considera una frec. de 100Hz (periodo de 25ms) del PWM.
-- tomado y modificado de: http://www.boletin.upiita.ipn.mx/boletin29/cyt/servo.htm

library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

ENTITY PWM is

    generic( Max: natural := 1250000); --para periodo de 25ms (el mínimo es 20ms)

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz

             selector :  in  STD_LOGIC_VECTOR (2 downto 0);--selecciona las 4 posiciones

             PWM_o :  out  STD_LOGIC);--terminal donde sale la señal de PWM

end PWM;

 

ARCHITECTURE PWM of PWM is

   signal PWM_Count: integer range 1 to Max;

begin

 

generacion_PWM:

   process( clk, selector,PWM_Count)

                     constant pos1: integer := 30000 ;  -- 600 us = -90° izquierda

                     constant pos2: integer := 52500;  -- 1050 us = -45° izquierda

                     constant pos3: integer := 75000;  -- 1500 us = 0°

                     constant pos4: integer := 97500; -- 1950 us = 45° derecha
							
                     constant pos5: integer := 120000; -- 2400 us = 90° derecha							

          begin

             if rising_edge(clk)then 
					PWM_Count <= PWM_Count + 1;
             end if;

                     case (selector) is

                                 when "000" =>--con el selector en 00 se posiciona en servo en 0°

                                             if PWM_Count <= pos1 then 
															   PWM_o <= '1';
                                             else                                        
															   PWM_o <= '0';
                                             end if;

                                 when "001" =>-- con el selector en 01 se posiciona en servo en 45°

                                             if PWM_Count <= pos2 then 
															PWM_o <= '1';
                                             else                                       
															PWM_o <= '0';
                                             end if;

                                 when "011" =>-- con el selector en 11 se posiciona en servo en 90°

                                             if PWM_Count <= pos3 then 
															 PWM_o <= '1';
                                             else                                       
															 PWM_o <= '0';
                                             end if;

                                 when "010" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos4 then 
															  PWM_o <= '1';
                                             else                                        
														   	PWM_o <= '0';
                                             end if;

											when "100" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos5 then 
															  PWM_o <= '1';
                                             else                                        
														   	PWM_o <= '0';
                                             end if;
                                 when others => PWM_o <= '0';

                     end case;

          end process generacion_PWM;

end PWM;

---------------------------------------------------------------------------------------------

 

