-- https://www.youtube.com/watch?v=lum1l7w0_UQ

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity EightBitHalfAdder is
  port
  (
  Num_1, Num_2 : in std_logic_vector(7 downto 0);
  Sum : out std_logic_vector(7 downto 0);
  Carry : out std_logic
  );
  
end entity EightBitHalfAdder;

architecture Behavioral of EightBitHalfAdder is
  signal Cout   : std_logic_vector(14 downto 0);
  signal Sout   : std_logic_vector(7 downto 1);
  signal GateOr : std_logic_vector(5 downto 0); 
begin
  
    Sum(0) <= Num_1(0) xor Num_2(0);
  Cout(0) <= Num_1(0) and Num_2(0); --Half Adder 0
  
  Sout(1) <= Num_1(1) xor Num_2(1);
  Cout(1) <= Num_1(1) and Num_2(1); --Half Adder 1
  
    Sum(1) <= Cout(0) xor Sout(1); 
    Cout(8) <= Cout(0) and Sout(1); --Half Adder 8 
    
  Sout(2) <= Num_1(2) xor Num_2(2);
  Cout(2) <= Num_1(2) and Num_2(2); --Half Adder 2 
  
  GateOr(0) <= Cout(8) or Cout(1);
  
    Sum(2) <= GateOr(0) xor Sout(2);
    Cout(9) <= GateOr(0) and Sout(2);
  
  Sout(3) <= Num_1(3) xor Num_2(3);
  Cout(3) <= Num_1(3) and Num_2(3);
  
  GateOr(1) <= Cout(9) or Cout(2);
  
    Sum(3) <= GateOr(1) xor Sout(3);
    Cout(10) <= GateOr(1) and Sout(3);
    
  Sout(4) <= Num_1(4) xor Num_2(4);
  Cout(4) <=Num_1(4) and Num_2(4);
  
  GateOr(2) <= Cout(10) or Cout(3);
  
    Sum(4) <= GateOr(2) xor Sout(4);
    Cout(11) <= GateOr(2) and Sout(4);
    
  Sout(5) <= Num_1(5) xor Num_2(5);
  Cout(5) <=Num_1(5) and Num_2(5);
  
  GateOr(3) <= Cout(11) or Cout(4);
  
    Sum(5) <= GateOr(3) xor Sout(5);
    Cout(12) <= GateOr(3) and Sout(5);
    
  Sout(6) <= Num_1(6) xor Num_2(6);
  Cout(6) <=Num_1(6) and Num_2(6);
  
  GateOr(4) <= Cout(12) or Cout(5);
  
    Sum(6) <= GateOr(4) xor Sout(6);
    Cout(13) <= GateOr(4) and Sout(6);
    
  Sout(7) <= Num_1(7) xor Num_2(7);
  Cout(7) <=Num_1(7) and Num_2(7);
  
  GateOr(5) <= Cout(13) or Cout(6);
  
    Sum(7) <= GateOr(5) xor Sout(7);
    Cout(14) <= GateOr(5) and Sout(7);
    
  Carry <= Cout(14) or Cout(7);
    
    
end architecture Behavioral;
