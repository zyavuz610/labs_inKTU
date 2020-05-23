Library IEEE;
Use IEEE.std_logic_1164.all;

Entity eWM is
	Port(s:in std_logic;
	     G:in std_logic_vector(1 downto 0);
	     F:out std_logic);
End eWM;

Architecture behv of eWM is
Type tDurumlar is(bsl,yk,drl,skm);
Signal dSimdi : tDurumlar := bsl;
Signal R : std_logic := '0';
Begin
Process(s)
Begin
if(rising_edge(s)) then
Case dSimdi is
When bsl=>
if(G="00") then
f<='0';
dSimdi<=yk;
Elsif(G="01") then
f<='0';
dSimdi<=drl;
Elsif(G="10") then
f<='0';
dSimdi<=skm;
End if;

When yk=>
if(G="01") then
f<='0';
dSimdi<=drl;
Elsif(R='1') then
dSimdi<=bsl;
R<='0';
End if;

When drl=>
if(G="10") then
f<='0';
dSimdi<=skm;
Elsif(R='1') then
dSimdi<=bsl;
R<='0';
End if;

When skm=>
if(R='1') then
dSimdi<=bsl;
R<='0';
Else
f<='1';
End if;

End Case;
End if;
End Process;
End behv;
