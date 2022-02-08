--Beyza KARALI  365353   Grup: A7
-- 3 Bitli 4X1 MUX 
-- https://www.youtube.com/watch?v=itxY2CPBi1Y

Library IEEE;
Use IEEE.std_logic_1164.all;


Entity Mux_4x1 IS
Port(G1,G2,G3,G4 : IN  std_logic_vector(2 downto 0);
           S0,S1 : IN  std_logic;
              C  : OUT std_logic_vector(2 downto 0));

End Mux_4x1;  

Architecture Behv of Mux_4x1 IS

  Signal And1 : std_logic;
  Signal And2 : std_logic;
  Signal And3 : std_logic;
  Signal And4 : std_logic;
  Signal NotS0: std_logic;
  Signal NotS1: std_logic;
Begin
  NotS1 <= NOT S1;
  NotS0 <= NOT S0;

--And Gates
  And1 <= NotS1 AND NotS0;
  And2 <= NotS1 AND S0 ;
  And3 <= S1 AND NotS0;
  And4 <= S1 AND S0;

--Or Gate
  C  <= G1 WHEN And1 ='1' ELSE
        G2 WHEN And2 ='1' ELSE
        G3 WHEN And3 ='1' ELSE
        G4 WHEN And4 ='1' ELSE
        "--1";


End Behv;
