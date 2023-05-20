--------------------------------------------------------------------------------
--
--  projekt1:
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

entity projekt1 is
   port(a, b, c, d: in std_logic;
        x, y, z   : out std_logic);
end entity;

architecture behaviour of projekt1 is
signal b_n, c_n, d_n: std_logic;
begin

   b_n <= not b;
   c_n <= not c;
   d_n <= not d;
   
   x <= (a xor b);
   y <= ((b_n and c_n and d_n) or (b and c) or (c and d));
   z <= ((b and c_n and d_n) or (c and d) or (b_n and c));

end architecture;