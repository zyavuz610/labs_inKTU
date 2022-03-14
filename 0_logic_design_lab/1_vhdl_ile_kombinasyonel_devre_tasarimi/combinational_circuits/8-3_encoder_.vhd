--348298 - Abdullah Eren Yavan
-- https://www.youtube.com/watch?v=yohCqAE8xTI

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Encoder8to3 is
	Port(input:in std_logic_vector(7 downto 0);
	     output:out std_logic_vector(2 downto 0));
	
	end Encoder8to3;
	
	
Architecture Behv of Encoder8to3 is
  Begin
  
      output <= "111" when input(7)='1'else
		"110" when input(6)='1'else
		"101" when input(5)='1'else
		"100" when input(4)='1'else
		"011" when input(3)='1'else
		"010" when input(2)='1'else
		"001" when input(1)='1'else
		"000" when input(0)='1';
	end Behv;
