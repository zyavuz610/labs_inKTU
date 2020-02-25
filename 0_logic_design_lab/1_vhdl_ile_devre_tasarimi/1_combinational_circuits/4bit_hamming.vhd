-- Hazirlayan: Orkhan Aliyev
-- https://youtu.be/j8uayRSAie4

library ieee;
use ieee.std_logic_1164.all;

entity hamming is 
  port(input : in std_logic_vector(0 TO 3); -- i0 i1 i2 i3
       output : out std_logic_vector(0 TO 6));-- p1 p2 p4 i0 i1 i2 i3 
end hamming;

architecture Behv of hamming is

signal p1, p2, p4 : std_logic; --eslik bitleri

begin
  
 p1 <= (input(0) xor input(1)) xor input(3);
 p2 <= (input(0) xor input(2)) xor input(3);
 p4 <= (input(1) xor input(2)) xor input(3);


output(0 TO 2) <= (p1, p2, p4);
output(3 TO 6) <= input(0 TO 3);

end Behv;
