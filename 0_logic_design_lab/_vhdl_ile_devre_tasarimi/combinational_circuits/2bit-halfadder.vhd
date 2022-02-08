library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_halfadder is
  port( A0, A1:    in std_logic;
        B0, B1:    in std_logic;
        S0, S1, C: out std_logic);
end tb_halfadder;


architecture Behv of tb_halfadder is
  signal k0, k1, k2, k3: std_logic;
  
Begin
  S0 <= A0 xor B0;
  k0 <= A0 and B0;
  k1 <= A1 xor B1;
  k2 <= A1 and B1;
  S1 <= k0 xor k1;
  k3 <= k0 and k1;
  C  <= k2 or  k3;
end Behv;
