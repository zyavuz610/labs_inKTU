--SAYISAL TASARIM LAB. DERSÝ
--OTOPARK PROJESÝ
--ONUR TAS
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;

Entity eOtopark is
Port( s : in std_logic; --saat girisi
      A : in std_logic_vector(2 downto 0); --sensor degerleri
      --A(0) a sensoru
      --A(1) b sensoru
      --A(2) c sensoru
      secim : in std_logic;
      --secim=1 otoparka giris
      --secim=0 otoparktan cikis
      F : out std_logic_vector(3 downto 0));
End eOtopark;

Architecture Behv of eOtopark is
  Signal temp : std_logic_vector(3 downto 0) :="0000";
  --Durum tanimlari
  Type tDurumlar is (BSL, GRS1, GRS2, GRS3, GRS4, BTS);
  Signal dSimdi : tDurumlar:= BSL; --ilk durumdan baslar

Begin
process(s)
  begin
	if(secim = '1') THEN-- araba giris yapar
		if( Rising_edge(s) ) THEN
		 Case dSimdi is
  		  When BSL =>
			if(A="100") THEN dSimdi <= GRS1;
			End if;
		  When GRS1 =>
			if(A="110") THEN dSimdi <= GRS2;
			Elsif(A="000") THEN dSimdi <= BSL;
			End if;
		  When GRS2 =>
			if(A="011") THEN dSimdi <= GRS3;
			Elsif(A="100") THEN dSimdi <= GRS1;
			End if;
		  When GRS3 =>
			if(A="001") THEN dSimdi <= GRS4;
			Elsif(A="110") THEN dSimdi <= GRS2;
			End if;
		  When GRS4 =>
			if(A="000") THEN dSimdi <= BTS;
			Elsif(A="011") THEN dSimdi <= GRS3;
			End if;
			
		  When BTS =>
			temp <= temp + 1;
		 End Case;
	        end if;
	end if;

	if(secim = '0') THEN-- araba cikis yapar
		if( Rising_edge(s) ) THEN
		Case dSimdi is
		
		 When BSL =>
			if(A="001") THEN dSimdi <= GRS1;
			End if;
		 When GRS1 =>
			if(A="011") THEN dSimdi <= GRS2;
			Elsif(A="000") THEN dSimdi <= BSL;
			End if;
		 When GRS2 =>
			if(A="110") THEN dSimdi <= GRS3;
			Elsif(A="001") THEN dSimdi <= GRS1;
			End if;	
		 When GRS3 =>
			if(A="100") THEN dSimdi <= GRS4;
			Elsif(A="011") THEN dSimdi <= GRS2;
			End if;
		 When GRS4 =>
			if(A="000") THEN dSimdi <= BTS;
			Elsif(A="110") THEN dSimdi <= GRS3;
			End if;
		 When BTS =>
			temp <= temp - 1;
		End Case;
	       end if;
	end if;

end process;
F <= temp;
End Behv;
