-- Hazırlayan: Aleyna Özbek
-- https://www.youtube.com/watch?v=Zwku31DfQkM&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=2

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity E16_4encoder is
	Port(input:in std_logic_vector(15 downto 0);
	     output:out std_logic_vector(3 downto 0));

	end E16_4encoder;


	Architecture Behv of E16_4encoder is
		Begin
			output<="1111" when input(15)='1'else
				"1110" when input(14)='1'else
				"1101" when input(13)='1'else
				"1100" when input(12)='1'else
				"1011" when input(11)='1'else
				"1010" when input(10)='1'else
				"1001" when input(9)='1'else
				"1000" when input(8)='1'else
				"0111" when input(7)='1'else
				"0110" when input(6)='1'else
				"0101" when input(5)='1'else
				"0100" when input(4)='1'else
				"0011" when input(3)='1'else
				"0010" when input(2)='1'else
				"0001" when input(1)='1'else
				"0000" when input(0)='1'else
				"0000";
				   
		end Behv;
