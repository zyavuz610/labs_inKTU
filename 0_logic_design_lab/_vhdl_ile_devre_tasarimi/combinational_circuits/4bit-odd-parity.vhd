-- VHDL ile 4 bitlik tek parity biti hesaplama
-- https://youtu.be/FV6irda4HXY

Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TEKPARITY is
  Port( input: in STD_LOGIC_VECTOR (2 downto 0);
    output_tek: out  STD_LOGIC_VECTOR (3 downto 0));
end TEKPARITY;

  architecture Behv of TEKPARITY is
  signal temp: std_logic:= '0';
  begin
    temp <= input(0) xor input(1) xor input(2);
    output_tek<= input & not temp;
  end Behv;
