Library IEEE;
Use IEEE.std_logic_1164.all;

Entity eOR is
	Port(A,B,C:in std_logic;
		 F:out std_logic);
End eOR;

Architecture behv of eOR is
Begin
F<= A OR B OR C;
End behv;
