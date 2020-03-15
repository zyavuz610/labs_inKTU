-- Hazırlayan: Aleyna Özbek
-- https://www.youtube.com/watch?v=KW5uX0c2s6I&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=1

Library IEEE;
Use IEEE.STD_logic_1164.all;

Entity e4to16decoder is
  Port(input: in std_logic_vector(3 downto 0);
         output: out std_logic_vector(15 downto 0) );
end e4to16decoder;

Architecture Behv of e4to16decoder is
Begin
  output(0) <= (not input(3)) and (not input(2)) and (not input(1)) and (not input(0));
  output(1) <= (not input(3)) and (not input(2)) and (not input(1)) and input(0);
  output(2) <= (not input(3)) and (not input(2)) and input(1) and (not input(0));
  output(3) <= (not input(3)) and (not input(2)) and input(1) and input(0);
  output(4) <= (not input(3)) and input(2) and (not input(1)) and (not input(0));
  output(5) <= (not input(3)) and input(2) and (not input(1)) and input(0);
  output(6) <= (not input(3)) and input(2) and input(1) and (not input(0));
  output(7) <= (not input(3)) and input(2) and input(1) and input(0);
  output(8) <= input(3) and (not input(2)) and (not input(1)) and (not input(0));
  output(9) <= input(3) and (not input(2)) and (not input(1)) and input(0);
  output(10)<= input(3) and (not input(2)) and input(1) and (not input(0));
  output(11)<= input(3) and (not input(2)) and input(1) and input(0);
  output(12) <= input(3) and input(2) and (not input(1)) and (not input(0));
  output(13) <= input(3) and input(2) and (not input(1)) and input(0);
  output(14) <= input(3) and input(2) and input(1) and (not input(0));
  output(15) <= input(3) and input(2) and input(1) and input(0);
end Behv;
