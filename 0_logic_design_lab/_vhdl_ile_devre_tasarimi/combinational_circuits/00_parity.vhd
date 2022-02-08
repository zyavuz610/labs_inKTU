-- Emra Kurşun
-- https://www.youtube.com/watch?v=Hc-CZ5s01u0&index=10&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq
Library IEEE;
Use IEEE.std_logic_1164.all;

Entity eB is
  Port(aVec:in std_logic_vector(6 downto 0);
    bVec:out std_logic_vector(7 downto 0));
  End Entity;

Architecture mimari of eB is
  signal eslik: std_logic;
  Begin
    
    eslik <= aVec(0) xor aVec(1) xor aVec(2) xor aVec(3) xor aVec(4) xor aVec(5) xor aVec(6);
    bVec <= aVec & eslik;
    
  End mimari;
