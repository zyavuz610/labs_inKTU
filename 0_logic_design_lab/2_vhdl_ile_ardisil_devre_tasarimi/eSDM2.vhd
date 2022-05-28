-- 4 durumlu çamaşır makinesi VHDL kodu
-- Giris(ler): s (saat giri?i), A (2 bit durum bilgisini tutan vektör)
-- Cikis(lar): f(1 bit, 1 de?eri varsa makine çal??may? durdurur)
-- ödev: kurutma seçeneği ekleyiniz.
---------------------------------------------
Library IEEE; 
Use IEEE.std_logic_1164.all; 

Entity eSDM is 
	Port( 
	       s : in std_logic;  -- saat 
     	   A : in std_logic_vector(1 downto 0); 
     	   -- y:00, d:01, s:10, k:11
         f : out std_logic 
      ); 
End eSDM; 
 
Architecture Behv of eSDM is                -- Durumlar icin tip tanimi. 
Type tDurumlar is ( BSL, YK, DRL, SKM, KRL ); 
Signal dSimdi : tDurumlar := BSL ;          -- ilk durum 

Begin Process(s)                            -- Durum makinesi 
Begin    
If( Rising_edge(s) ) then       
	Case dSimdi is         
	    When BSL =>                
		    If( A="00" ) Then      -- y girisi           
		 	     f <= '0';  -- bitmedi
			     dSimdi <= YK;             
		    Elsif( A="01" ) Then -- d                 
			     f <= '0'; 
			     dSimdi <= DRL;             
		    Elsif( A="10" ) Then -- s                
			     f <= '0'; 
			     dSimdi <= SKM;      
		    Elsif( A="11") Then --k
		       f <= '1';
		       dSimdi <= KRL;
		    End if;   
	    When YK =>             
		    If( A="01" ) Then    -- d                
			     f <= '0'; 
			     dSimdi <= DRL;             
		    End if;         
	    When DRL =>             
		    If( A="10" ) Then    -- s                
			     f <= '0'; 
			     dSimdi <= SKM;             
		    End if;          
	    When SKM =>
	      If (A = "11" ) Then        -- k
	        f <= '1';
	        dSimdi <= KRL;
	      End if;
		    f <= '0';
		  When KRL =>
		    f <= '1';   -- BITTI
		    -- dSimdi <= BSL; --basa dön     
	End Case;            
End if; -- her saat sinyalinde 
End process; 
End Behv;