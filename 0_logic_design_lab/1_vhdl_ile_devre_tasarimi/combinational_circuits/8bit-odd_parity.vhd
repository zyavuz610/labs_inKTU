--Sayisal Tasarim Laboratuvari Deney-1
--Yusuf CEYLAN 365274
--19.04.2020
--8 Bit Tek Parity 

library IEEE; -- Kütüphane eklenir.
use IEEE.std_logic_1164.all; -- Kütüphane içindeki paketler projeye dahil edilir.

entity Parity is --Bu blokta devre elemani tanimlanir.
  Port ( input : in STD_LOGIC_VECTOR (6 downto 0); --7 bitlik giris.
            output : out STD_LOGIC_VECTOR (7 downto 0)); --8 bitlik çikti.
  end Parity;

architecture Behv of Parity is --Ara sinyal ve komponent tanimlari yapilir.
  signal temp: std_logic:= '0';
  
begin --Devrenin yaptigi isler, devre elemanlari yazilir.

  temp <= input(0) xor input(1) xor input(2) xor input(3) xor input(4) xor input(5) xor input(6);
  output <= input & not temp;
  
end Behv;
