program COMPLEMENT9 ;
uses WinCrt ;
var
mp,i,p,ch,c : Integer ;

Begin

read(c);
ch:=0 ;
mp:=0 ;
p:=1 ;
for i := 1 to 8 do
Begin///for2
ch := 9-c mod 10 ;
mp := mp + ch*p  ;
p:=p*10 ;
c := c div 10 ;
end;//for2
write(mp) ;
ReadKey ;
end.