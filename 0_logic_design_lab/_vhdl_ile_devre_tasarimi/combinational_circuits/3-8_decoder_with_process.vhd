--Hazirlayan: Guzin Kanburoglu 365254
-- https://drive.google.com/file/d/1fZEUPbZWn5e_-7Elq1XyMVWyqCmnfEMs/view

library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder3to8 is
 port(a : in STD_LOGIC_VECTOR(2 downto 0);
      b : out STD_LOGIC_VECTOR(7 downto 0));
end decoder3to8;
 
architecture bhv of decoder3to8 is
begin
 
process(a)
begin
             if(a="000")then
              b <= "00000001";
              
            elsif(a="001")then
            b <= "00000010";
            
            elsif(a="010")then
            b <= "00000100";
            
            elsif(a="011")then
            b <= "00001000";
            
            elsif(a="100")then
            b <= "00010000";
          
            elsif(a="101")then
            b <= "00100000";
      
           elsif(a="110")then
           b <= "01000000";
    
           else
            b <= "10000000";
 end if;
end process;
end bhv;
