-- https://www.youtube.com/watch?v=xK_3CK2-BtE&feature=youtu.be

Library IEEE; 
Use IEEE.std_logic_1164.all; 
Entity eSDM is 
	Port( s : in std_logic;  -- saat 
     	      A : in std_logic_vector(1 downto 0); 
              f : out std_logic ); 
End eSDM; 
 
Architecture Behv of eSDM is -- Durumlar icin tip tanimi. 
Type tDurumlar is ( BSL, YK, DRL, SKM ); 
Signal dSimdi : tDurumlar := Bsl ; -- ilk durum 
   Begin Process(s)  -- Durum makinesi 
	Begin    
	If( Rising_edge(s) ) then       
	Case dSimdi is         
	    When BSL =>   -- y girisi             
		 If( A="00" ) Then  -- bitmedi               
		 	f <= '0';  
			dSimdi <= YK;             
		 Elsif( A="01" ) Then -- d                 
			f <= '0'; 
			dSimdi <= Drl;             
		 Elsif( A="10" ) Then -- s                
			f <= '0'; 
			dSimdi <= SKM;            
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
		 f <= '1';   -- BITTI
		dSimdi <= BSL; --basa dön     
	End Case;            
	End if; -- her saat sinyalinde 
   End process; 
End Behv;
