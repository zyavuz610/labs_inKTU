-- 1-bit Full Adder / Sayısal Tasarım Lab. "VHDL ile Devre Tasarımı" deneyi ödevi.
-- https://drive.google.com/file/d/1DJobmzc9p_sDmVl5uPCeExWqZsg73YUr/view


LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- port() gösteriminin içerisinde 1-bitlik tam toplayıcının giriş ve çıkışlarını tanımlıyoruz.
-- bu devre, iki biti (a,b), elde girişi(cin), toplam çıkış(sum) ve bir elde çıkışı(cout) ile birlikte toplayacak.
entity BIT_ADDER is
        port( a, b, cin         : in  STD_LOGIC;
              sum, cout         : out STD_LOGIC );
end BIT_ADDER;

-- 1-bitlik tam toplayıcının fonksiyon tanımlaması
architecture BHV of BIT_ADDER is
begin
        
        -- 1-bitlik tam toplayıcının toplam(sum) hesabı.
        -- Uzun yolla şöyle yapılabilir:
        --sum <=  (not a and not b and cin) or
                        --(not a and b and not cin) or
                        --(a and not b and not cin) or
                        --(a and b and cin);
        -- Kullanmayı tercih ettiğim:                 
        sum <= a xor b xor cin;

        -- 1-bitlik tam toplayıcının elde çıkışı(cout) hesabı.
        cout <= (a and b) or (cin and a) or (cin and b)
end BHV;
