-- selim yalçınkaya
-- https://youtu.be/GqUdx0SY8SY

Library IEEE, STD;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity eKapi is
Port (
anahtar: in std_logic_vector(7 downto 0);
giris: in std_logic_vector(7 downto 0);
saat: in std_logic; 
cikis: out std_logic_vector(7 downto 0)
);
End eKapi;

Architecture Behv of eKapi is
  signal sonuc:std_logic_vector(7 downto 0);
  signal ilksonuc:std_logic_vector(7 downto 0);
Begin
    process(saat)
    Begin
    if saat='1' and saat'event then
    ilksonuc<= anahtar xor giris;
    sonuc<=anahtar xor ilksonuc; 
    end if;
    end process;
    cikis<=sonuc;
end Behv;
