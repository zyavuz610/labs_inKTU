-- Hazırlayan: Orkhan Aliyev
-- https://youtu.be/j8uayRSAie4

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY hamming_encoder IS
 PORT(datain : IN std_logic_vector(0 TO 4); --d0 d1 d2 d3
      hamout : OUT std_logic_vector(0 TO 3)); --d0 d1 d2 d3 p0 p1 p2
END hamming_encoder;

ARCHITECTURE beh OF hamming_encoder IS

SIGNAL p0, p1, p2 : BIT; --check bits

BEGIN
--generate check bits
 p0 <= (datain(0) XOR datain(1)) XOR datain(3);
 p1 <= (datain(0) XOR datain(2)) XOR datain(3);
 p2 <= (datain(1) XOR datain(2)) XOR datain(3);

--connect up outputs
hamout(4 TO 6) <= (p0, p1, p2);
hamout(0 TO 3) <= datain(0 TO 3);

END beh;



