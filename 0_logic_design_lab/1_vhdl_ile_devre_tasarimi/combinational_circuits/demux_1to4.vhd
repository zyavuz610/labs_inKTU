--------------DEMUX 1X4 with 4bit inputs VHDL code------------------
-------------Adem Çapan---------------------------------------------
-- https://www.youtube.com/watch?v=ZYhfQLl9ALM

Library IEEE;
use IEEE.std_logic_1164.all;

Entity demux_1to4 IS
PORT(I: in std_logic_vector(3 downto 0);
     Sel: in std_logic_vector(1 downto 0);
     W,X,Y,Z: out std_logic_vector(3 downto 0));
end Entity;


Architecture Behaviour of demux_1to4 IS

Begin
with(Sel) Select
W<=I when "00","ZZZZ" when others;
with(Sel) Select
X<=I when "01","ZZZZ" when others;
with(Sel) Select
Y<=I when "10","ZZZZ" when others;
with(Sel) Select
Z<=I when "11","ZZZZ" when others;
end Architecture;
