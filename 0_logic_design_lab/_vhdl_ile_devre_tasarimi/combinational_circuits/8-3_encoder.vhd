-- Hazırlayan: Ahmetcan İrdem
-- https://drive.google.com/file/d/1mgIHeIrYdjCY3UJSFHJ02hqiSWuxPBbd/view

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity encoder is
	Port ( a: in std_logic_vector(7 downto 0);
	       f: out std_logic_vector(2 downto 0));
end encoder;

Architecture Behv of encoder is
Begin
	f(0) <= a(1) or a(3) or a(5) or a(7);
	f(1) <= a(2) or a(3) or a(6) or a(7);
	f(2) <= a(4) or a(5) or a(6) or a(7);
End Behv;
