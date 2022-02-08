-- youtube.com/watch?v=LK59IfoWFJk

Library IEEE;
Use Ieee.std_logic_1164.all;

Entity Parity is
  Port(giris: in std_logic_vector(14 downto 0);
        cikis: out std_logic_vector(15 downto 0));
End Parity;

Architecture Behv of Parity is
      signal eslik_biti: std_logic;
Begin
  eslik_biti <= giris(0) xor giris(1) xor  giris(2) xor giris(3) xor giris(4) xor giris(5) xor 
              giris(6) xor giris(7) xor giris(8) xor giris(9) xor giris(10) xor giris(11) xor 
              giris(12) xor giris(13) xor giris(14);
  cikis <= giris & eslik_biti;
End Behv;
