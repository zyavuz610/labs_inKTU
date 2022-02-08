-- https://www.youtube.com/watch?v=iqI47OHsQys
Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux1_4 is
   Port(A :in std_logic;
	S : in std_logic_vector(1 downto 0);
	X: out std_logic_vector(3 downto 0));
end demux1_4;

architecture behv of demux1_4 is
begin
  process(S,A)
  begin

    if S="10"  then
           X(0)<='0';
 	   X(1)<='0';
	   X(2)<=A;
           X(3)<='0';

    elsif S="11" then 
           X(0)<='0';
 	   X(1)<='0';
	   X(2)<='0';
           X(3)<=A;

    elsif  S="00" then
	   X(0) <= A;
	   X(1) <= '0';
	   X(2) <= '0';
	   X(3) <= '0';
	
    elsif S="01" then
	   X(0)<='0';
           X(1)<=A ;
    	   X(2)<='0';
           X(3)<='0';


    end if;
    end process;
end behv;
