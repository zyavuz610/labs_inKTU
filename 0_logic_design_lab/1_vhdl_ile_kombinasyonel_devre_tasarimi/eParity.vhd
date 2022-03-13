---------------------------------------------
-- çift Parity biti
-- standart 7 bit girişli 8 bit çikışlı çift parity kodlayıcı
-- Giris(ler): aVec (7 bit)
-- Cikis(lar): fVec (8 bit), 8. bit parity
-- ödev: tek parity
---------------------------------------------
Library IEEE;
Use IEEE.std_logic_1164.all;

Entity eParity is
  Port(
        aVec: in std_logic_vector(6 downto 0); -- 7 bit giriş
        fVec: out std_logic_vector(7 downto 0) -- 8 bit çıkış
      );
End Entity;

Architecture Arch_parity of eParity is
Signal p: std_logic;
Begin    
    p <= aVec(0) xor aVec(1) xor aVec(2) xor aVec(3) xor aVec(4) xor aVec(5) xor aVec(6);
    -- (1) 100 0000 -> 
    fVec <= aVec & p; -- concat
End Arch_parity;