--------------------------------------------------------------------------------
--
--  projekt1_tb:
--                x = a ^ b
--                y = b'c'd' + bc + cd
--                z = bc'd' + cd + b'c
--
--             inputs : a, b, c, d
--             outputs: x, y, z  
--                
--             
--                Created for Terasic DE10-lite
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity projekt1_tb is
end entity;

architecture behaviour of projekt1_tb is
signal a, b, c, d, x, y, z: std_logic := '0';
begin

   vhdl_exercise2_sim: entity work.projekt1
   port map(a, b, c, d, x, y, z);
   
   SIM_PROCESS: process is
   variable input: std_logic_vector(3 downto 0);
   begin
   
      for i in 0 to 15 loop
         (a, b, c, d) <= std_logic_vector(to_unsigned(i, 4));
         wait for 10 ns;
      end loop;
      wait;
   
   end process;
end architecture;