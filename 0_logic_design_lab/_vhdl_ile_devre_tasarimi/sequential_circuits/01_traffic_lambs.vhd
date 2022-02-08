-- Emre Kurşun
-- https://www.youtube.com/watch?v=oLrk7fDmEbw&index=12&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq

Library IEEE;
Use IEEE.std_logic_1164.all;

Entity trafik is
  Port(clk:in std_logic;
    Yesil:out std_logic;
    Sari:out std_logic;
    Kirmizi:out std_logic);
  End Entity;
  
  Architecture mimari of trafik is
    Begin
      
      Process(clk)
        Variable cnt: integer := 0;
        Begin
          
          If(rising_edge(clk))then
          
            If(cnt > 20)then
              cnt := 0;
            End If;
            
            If(cnt = 0)then
              Yesil <= '1';
              Sari <= '0';
              Kirmizi <= '0';
            End If;
            
            If(cnt = 10)then
              Yesil <= '0';
              Sari <= '1';
              Kirmizi <= '0';
            End If;
            
            If(cnt = 11)then
              Yesil <= '0';
              Sari <= '0';
              Kirmizi <= '1';
            End If;
            
            If(cnt = 20)then
              Yesil <= '0';
              Sari <= '1';
              Kirmizi <= '1';
            End If;
          
            cnt := cnt + 1;
            
          End If;
      End Process;
    End mimari;
