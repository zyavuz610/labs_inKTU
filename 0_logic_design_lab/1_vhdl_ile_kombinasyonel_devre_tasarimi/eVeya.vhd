------------------------------------------------
-- Veya kapısı
-- standart 3 adet girişi olan VEYA kapısı tasarımı
-- Giris(ler): a,b,c
-- Çıkış(lar): f
-- ödev olarak eAnd (3 girişli)
------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-- eVeya, tasarlanan devre elmanının adı
Entity eVeya is 
  Port (
    a: in std_logic;
    b: in std_logic;
    c: in std_logic;
    f: out std_logic
  );
end eVeya;

architecture eVeya_Behv of eVeya is
Signal s: std_logic;
Begin
  s <= a or b;
  f <= s or c;
End eVeya_Behv;