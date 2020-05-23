-- Gökhan Yazıcı
-- https://www.youtube.com/watch?v=0cLV-IOeoac&list=PLcjh-_Mx3C9Ozs5U6qc2idUcsnTP5UyEq&index=17

library IEEE; --library kelimesi ile kütüphane eklenir.
 use IEEE.STD_LOGIC_1164.ALL; --kütüphane içindeki paketleri projeye dahil eder.
 use IEEE.NUMERIC_STD.ALL; -- Toplama ve çıkarmanın tanımlı olduğu library.
 entity ALU is –-devre elemanlarını tanıtır.
 Port ( giris1 : in signed (7 downto 0);  -- giriş , çıkış ve seçme girişi portlarını tanıtır.
      	giris2 : in signed (7 downto 0);
      	secme : in STD_LOGIC;
      	cikis : out signed (7 downto 0));
end ALU;
 architecture Behv of ALU is
 begin
with secme select
 cikis <= giris1 + giris2 when '0', -- seçme girişi 0 olduğunda girişteki dizileri toplayıp çıkışa aktarır.
  	       giris1 - giris2 when '1', --seçme girişi 1 olduğunda  girişteki dizileri çıkarıp çıkışa aktarır.
"ZZZZZZZZ" when others; --seçme girişi 0 ve 1 harici durumlar için kullanılır.
 end Behv;
