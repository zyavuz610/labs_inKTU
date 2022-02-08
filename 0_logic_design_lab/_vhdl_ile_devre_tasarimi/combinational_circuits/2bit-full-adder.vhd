--Gizem Duman 365236 
--2 bit fulladder
-- https://www.youtube.com/watch?v=yER67Qyc0Mg

library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
  port(
    A: in std_logic_vector(1 downto 0);
    B: in std_logic_vector(1 downto 0);
    S: out std_logic_vector(1 downto 0);
    Cin: in std_logic);
end fulladder;

architecture Behavioral of fulladder is
  signal Cout:std_logic_vector(1 downto 0):="00";
  
  begin 
 
S(0) <= A(0) XOR B(0) XOR Cin;
Cout(0) <=(A(0) AND B(0)) OR (Cin AND A(0)) OR (Cin AND B(0));
S(1) <= A(1) XOR B(1) XOR Cout(0);
Cout(1) <=(A(1) AND B(1)) OR (Cout(0) AND A(1)) OR (Cout(0) AND B(1));

end Behavioral;
