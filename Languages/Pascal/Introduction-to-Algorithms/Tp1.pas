program mod_de_passe ;
uses wincrt ;
Var
ch,n,m,a,i,p,b,b2,b7,b4,b5,c,mp :longint ;
Begin
Repeat ///le programme se repete jusqu'a ce que l'utilisateur tappe escape 
ClrScr ; ///chaque fois effacer le contenu du terminal 
WriteLn('********************************************************************************')    ;
Writeln('-----------------------------------BIENVENUE------------------------------------');
WriteLn('********************************************************************************')    ;
Write('Entrer le nom de user SVP :) : ');
read(n);
if (n > 9999)  then writeln('Attention ! , entrer un nombre de quatre chiffres')
else
begin ///else
a:=0 ;
p:=1 ;
m:=n ;
for i:= 1 to 4 do
Begin///for
ch := 10-m mod 10 ;
if ch <> 10 then a := a + ch*p ;
p:=p*10 ;
m := m div 10 ;
end;//for
b := 10000*a +n ;
b2 := (b div 10)mod 10 ;
b7 := (b div 1000000)mod 10 ;
b4 := (b div 1000)mod 10 ;
b5 := (b div 10000)mod 10 ;
c := b - (b2*10 +b4*1000+b5*10000+b7*1000000) + (b7*10 +b5*1000+b4*10000+b2*1000000);
ch:=0 ;
mp:=0 ;
p:=1 ;
ClrScr;
WriteLn('********************************************************************************')    ;
Writeln('----------------------------VOICI VOTRE RESULTAT--------------------------------');
WriteLn('********************************************************************************')    ;
WriteLn('N =',n) ;
WriteLn('A =',a) ;
WriteLn('B =',b) ;
WriteLn('C =',c) ;
for i := 1 to 8 do
Begin///for2
ch := 9-c mod 10 ;
mp := mp + ch*p  ;
p:=p*10 ;
c := c div 10 ;
end;//for2
Write('--------------------------------------------------------------------------------');
if n < 10   then Writeln('Nom user :','000',n,'                ','MP :',mp)
else if n < 100  then Writeln('Nom user :','00',n,'                ','MP :',mp)
else if n < 1000  then Writeln('Nom user :','0',n,'                ','MP :',mp)
else Writeln('Nom user :',n,'                ','MP :',mp);
Writeln('--------------------------------------------------------------------------------');
end;///else
WriteLn('-- Note : Tapper escape pour quitter --')  ;
until readkey = chr(27);
end.