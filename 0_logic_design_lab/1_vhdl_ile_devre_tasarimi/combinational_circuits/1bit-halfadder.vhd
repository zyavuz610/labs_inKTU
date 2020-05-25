-- https://drive.google.com/file/d/1yJ2c1h6rD48aEKQZqutL85Zjug3DuLc-/view

Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;
Entity HALF_ADDER is
          Port ( giris1 :  in  STD_LOGIC;
                 giris2 :  in  STD_LOGIC;
                 toplam : out  STD_LOGIC;
                 elde : out  STD_LOGIC);
End HALF_ADDER;

Architecture Behavioral of HALF_ADDER is
Begin
    toplam <= giris1 XOR giris2;
    elde <= giris1 AND giris2;
End Behavioral;
