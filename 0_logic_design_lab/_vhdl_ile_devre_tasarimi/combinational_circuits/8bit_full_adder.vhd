-- 8 bitlik full adder
-- OGUZ BALCI
-- https://youtu.be/Qx_IguP6imI


library ieee;
use ieee.std_logic_1164.all;
entity fulladder1 is
  port(
	A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	S: out std_logic_vector(8 downto 0);
	Cin: in std_logic);
  end fulladder1;
  architecture Behavioral of fulladder1 is
	signal Cout: std_logic_vector(7 downto 0);

	begin

S(0) <= (A(0) XOR B(0)) XOR Cin;
Cout(0) <= (A(0) AND B(0)) OR (Cin AND (A(0) XOR B(0))) ;
S(1) <= (A(1) XOR B(1)) XOR Cout(0);
Cout(1) <= (A(1) AND B(1)) OR (Cout(0) AND (A(1) XOR B(1))) ;
S(2) <= (A(2) XOR B(2)) XOR Cout(1);
Cout(2) <= (A(2) AND B(2)) OR (Cout(1) AND (A(2) XOR B(2))) ;
S(3) <= (A(3) XOR B(3)) XOR Cout(2);
Cout(3) <= (A(3) AND B(3)) OR (Cout(2) AND (A(3) XOR B(3))) ;
S(4) <= (A(4) XOR B(4)) XOR Cout(3);
Cout(4) <= (A(4) AND B(4)) OR (Cout(3) AND (A(4) XOR B(4))) ;
S(5) <= (A(5) XOR B(5)) XOR Cout(4);
Cout(5) <= (A(5) AND B(5)) OR (Cout(4) AND (A(5) XOR B(5))) ;
S(6) <= (A(6) XOR B(6)) XOR Cout(5);
Cout(6) <= (A(6) AND B(6)) OR (Cout(5) AND (A(6) XOR B(6))) ;
S(7) <= (A(7) XOR B(7)) XOR Cout(6);
Cout(7) <= (A(7) AND B(7)) OR (Cout(6) AND (A(7) XOR B(7))) ;
S(8) <= Cout(7);  

end Behavioral;
