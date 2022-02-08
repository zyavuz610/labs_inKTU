Library IEEE;
Use IEEE.std_logic_1164.all;

Entity demux1_4 is
Port( A : IN std_logic_vector(2 downto 0);
      S : IN std_logic_vector(1 downto 0);
      x0,x1,x2,x3:OUT std_logic_vector(2 downto 0));
End demux1_4;

Architecture Behav of demux1_4 is
begin
x0<= A WHEN S="00" ELSE "ZZZ";
x1<= A WHEN S="01" ELSE "ZZZ";
x2<= A WHEN S="10" ELSE "ZZZ";
x3<= A WHEN S="11" ELSE "ZZZ";
End Behav;
