-- 3 bit girisli 4-1 Mux Devresinin VHDL ile tasarlanmasi --

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity mux4_1 IS

Port(A,B,C,D: IN std_logic_vector(2 downto 0);
           S: IN std_logic_vector(1 downto 0);
           X: OUT std_logic_vector(2 downto 0));

End Entity;

Architecture Behv of mux4_1 IS

Begin

with(S) Select
X<= A when "00","ZZZ" when others;

with(S) Select
x<= B when "01","ZZZ" when others;

with(S) Select
x<= C when "10","ZZZ" when others;

with(S) Select
x<= D when "11","ZZZ" when others;

End Architecture;
