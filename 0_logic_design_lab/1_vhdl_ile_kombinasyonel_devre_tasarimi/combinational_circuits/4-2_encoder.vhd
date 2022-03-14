--BETÜL DOĞANPINAR 
--4to2 encoder tasarımı


Library IEEE;
Use IEEE.std_logic_1164.all;

 Entity ee42 is
   Port( input: in std_logic_vector ( 3 downto 0);
        output: out  std_logic_vector ( 1 downto 0));
       End ee42;
        
        Architecture Behv of ee42 is
          Begin 
            output <= "11" when input(3) ='1' else
                      "10" when input(2) ='1' else
                      "01" when input(1) ='1' else
                      "00" when input(0) ='1' else
                      "00";
                      
                  End Behv ;
