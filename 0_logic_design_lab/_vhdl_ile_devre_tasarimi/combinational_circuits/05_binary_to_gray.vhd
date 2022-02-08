-- Hazırlayan: Furkan Yankaç
-- https://www.youtube.com/watch?v=Ey_HSrS6UQ0&index=18&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq

library ieee;
use ieee.std_logic_1164.all;

entity grayCode is
  port ( input :in  std_logic_vector(3 downto 0);
         output:out std_logic_vector(3 downto 0));
end grayCode;

architecture Behv of grayCode is
  begin
    output(3) <=input(3);
    output(2) <=input(3) xor input(2);
    output(1) <=input(2) xor input(1);
    output(0) <=input(1) xor input(0);
  end Behv;
