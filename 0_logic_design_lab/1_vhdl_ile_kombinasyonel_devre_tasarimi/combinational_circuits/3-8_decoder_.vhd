-- https://www.youtube.com/watch?v=q0GYY19v7Yw&feature=youtu.be

Library ieee;
Use ieee.std_logic_1164.all;

Entity decoder is
  Port(a: in std_logic_vector(2 downto 0);
       f: out std_logic_vector(7 downto 0) );

end decoder;

Architecture Behv of decoder is

Begin

  f(0) <= (not a(2)) and (not a(1)) and (not a(0));
  f(1) <= (not a(2)) and (not a(1)) and a(0);
  f(2) <= (not a(2)) and a(1) and (not a(0));
  f(3) <= (not a(2)) and a(1) and a(0);
  f(4) <= a(2) and (not a(1)) and (not a(0));
  f(5) <= a(2) and (not a(1)) and a(0);
  f(6) <= a(2) and a(1) and (not a(0));
  f(7) <= a(2) and a(1) and a(0);

end Behv;

--Hazirlayan : Halil Ibrahim Tirgil
