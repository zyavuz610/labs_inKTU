-- https://drive.google.com/file/d/1_s5Pc6CZx9t4D49sxm_ZgxUBqsy2plc2/view
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
entity MUX is
 port(
     F: out STD_LOGIC_VECTOR(7 downto 0);
     S: in STD_LOGIC_VECTOR(1 downto 0);
     A,B,C,D: in STD_LOGIC_VECTOR(7 downto 0)
  );
end MUX;
 
architecture behv of MUX is
begin
process (A,B,C,D,S) is
begin
  if (S ="00") then
      F <= A;
  elsif (S ="01") then
      F <= B;
  elsif (S="10") then
      F <= C;
  else
      F <= D;
  end if;end process;
end behv;
