-------------------------------------------
---@Ayşe Nur Gökkaya                      |
--- 348402 Sayısal Tasarım Lab (2. Oturum)| 
---Otopark Giriş Sistemi                  |
-------------------------------------------

Library IEEE;   --Kutuphane 
use IEEE.std_logic_1164.all;  --Paket

Entity eOtopark is  --Devre Elemanı Tanıtımı
  Port( s : in std_logic; --saat 
        A : in std_logic_vector(2 downto 0);  --Durumlar
        F : out std_logic_vector(1 downto 0));  --Çıkışlar
End eOtopark;

Architecture Behv of eOtopark is  -- Devrenin mimarisi
Type tDurumlar is( bsl,grs0,grs1,grs2,grd,cks0,cks1,cks2,ckt);
  Signal dSimdi: tDurumlar:=bsl;
  begin
  process(s)
  begin
    if(rising_edge(s)) then
      Case dSimdi is
      when bsl =>
        if(A="000") then
          f<="00"; dsimdi<=bsl;
        elsif(A="100") then
         f<="00"; dsimdi<=grs0;
        elsif(A="001") then
         f<="00"; dsimdi<=cks0;
        End if;
      when grs0 =>
        if(A="110") then
         f<="00"; dsimdi<=grs1;
        elsif(A="100") then
         f<="10"; dsimdi<=ckt;
        End if;
      when grs1 =>
        if(A="011") then
         f<="00"; dsimdi<=grs2;
        elsif(A="110") then
         f<="00"; dsimdi<=cks2;
        End if;
      when grs2 =>
        if(A="001") then
         f<="01"; dsimdi<=grd;
        elsif(A="011") then
         f<="00"; dsimdi<=cks1;
        End if;   
      when grd =>
        if(A="000") then
         f<="00"; dsimdi<=bsl;
        elsif(A="001") then
         f<="00"; dsimdi<=cks0;
        End if;
      when cks0 =>
        if(A="001") then
         f<="01"; dsimdi<=grd;
        elsif(A="011") then
         f<="00"; dsimdi<=cks1;
        End if;
      when cks1 =>
        if(A="011") then
         f<="00"; dsimdi<=grs2;
        elsif(A="110") then
         f<="00"; dsimdi<=cks2;
        End if;
       when cks2 =>
        if(A="110") then
         f<="00"; dsimdi<=grs1;
        elsif(A="100") then
         f<="10"; dsimdi<=ckt;
        End if;  
       when ckt =>
        if(A="100") then
         f<="00"; dsimdi<=grs0;
        elsif(A="000") then
         f<="00"; dsimdi<=bsl; 
        End if;
      End Case;
      End if;
    End process;
  End Behv;
