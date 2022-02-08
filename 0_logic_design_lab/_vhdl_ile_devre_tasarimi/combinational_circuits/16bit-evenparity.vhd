-- https://www.youtube.com/watch?v=3FerDYikoOI

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_arith.all;
Use IEEE.std_logic_unsigned.all;

Entity eEslik is

Port( A:in std_logic_vector(15 downto 0):="1111111111111110";
      cP:out std_logic;
      tP:out std_logic);

End eEslik;

Architecture Behv of eEslik is
	Signal p:std_logic;
Begin
	p<= A(0) xor A(1) xor A(2) xor A(3) xor A(4) xor A(5) xor A(6) xor A(7) xor A(8) xor A(9) xor A(10) xor A(11)
	    xor A(12) xor A(13) xor A(14) xor A(15);
	tP<=p;
	cP<=not(p);
End Behv;
