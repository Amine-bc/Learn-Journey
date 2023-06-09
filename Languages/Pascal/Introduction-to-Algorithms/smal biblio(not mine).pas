//Biblio restreinte pour l'interro:

{1} function PUISS(x,y : longint):longint;                                 (* la fonction PUISS nous calcule x puissance y*)
{2} function NBPOS(n : longint):longint;                                 (* la fonction NBPOS nous donne le nombre de position d'un nombre*)
{3} function FACTO(x : integer):longint;                                (* la fonction FACTO nous calcule la factorielle d'un nombre*)
{4} function NBPREM(n : longint):boolean;                            (* la fonction NBPREM nous dit si un nombre est premier ou pas*)
{5} function BDEC(n,b : longint):longint;                           (* la fonction BDEC permet de convertir un nombre d'une base b au decimal*)
{6} function DECB(n:longint; b:integer):longint;               (* la fonction DECB permet de convertir un nombre du decimal vers une base b*)
{7} function CONC(a,b : longint):longint;                              (*la fonction CONC permet de concatener deux nombres*)
{8} function NBPARF(n:longint):boolean;                                (*la fonction NBPARF nous dit si un nombre est parfait ou non*)
{9} function MAXCH(N:longint):integer;                               (*la fonction MAXCH nous donne le plus grand chiffre d'un nombre*)
{10} function MINCH(n:longint):integer;                               (*la fonction MINCH nous donne le plus petit chiffre d'un nombre*)
{11} function PGCD(x,y:longint):longint;                               (*la fonction PGCD nous calcule le PGCD de deux nombres*)
{12} function PPCM(x,y:longint):longint;                               (*la fonction PPCM nous calcule le PPCM de deux nombres*)
{13} function SOMDIV(N:longint):longint;                            (*la fonction SOMDIV nous calcule la somme des diviseurs d'un nombre*)
{14} function CROISS(N:longint):longint;                             (* la fonction CROISS permet de reordonner les chiffres d'un nombre par ordre croissant*)
{15} function DECROISS(N:longint):longint;                        (* la fonction DECROISS permet de reordonner les chiffres d'un nombre par ordre decroissant*)
{16} function FREQCH(x,y:longint):integer;                         (*la fonction FREQCH permet de calculer le nombre de fois qu'un chiffre est present dans un nombre*)
{17} function FIBO(U0,U1,N:integer):longint;                     (*la fonction FIBO permet de calculer le Nieme element de la suite FIBONACCI*)
{18} function MIRROR(n:longint):longint;                            (*la fonction MIRROR permet d'inverser les chiffres d'un nombre ex : MIRROR(123)=321*)
{19} function EXTRACTCH(n:longint; npos:integer):integer;    (* la fonction EXTRACT permet d'extraire la position n d'un chiffre … partir de sa position *)
{20} function SWAP(n:longint):longint;                                (*la fonction SWAP permet d'inverser le chiffre du poids fort avec celui du poids faible ex SWAP(1956)=6951*)
{21} function ABOND(n:longint):boolean;                           (*la fonction ABOND nous dit si un nombre est abondant ou non*)
{26} function PREMPROCHE(n:longint):longint;                 (* la fonction PREMPROCHE fournit le nombre premier le plus proche de N*)
{27} function EXTRACTNB(x,pos,k:longint):longint;          (*la fonction EXTRACTNB permet d'extraire un nombre de "k" chiffres de "x" a partir de la position pos*)
{31} function NBDIV(n:longint):longint;                             (*la fonction NBDIV nous donne le nombre de divisuers d'un entier quelqonque*)
{40} function GRAY (Ng:longint):longint;                              (*la fonction GRAY donne le nombre suivant Ng (avec le code Gray)*) 




//{1}-----------------------------------------------------------------------------------------------
function PUISS(x,y : longint):longint;
var F,i:longint;
BEGIN
	F:=1;
	For i:= 1 To y Do
	F:= F*x;
	PUISS:=F;
END;
//{2}-----------------------------------------------------------------------------------------------
function NBPOS(n : longint):longint;
var i:longint;
BEGIN
	i:=0;
	While n  <> 0 Do
	begin
		i:= i+1;
		n:= n div 10;
	end;
	NBPOS:= i;
END;
//{3}-----------------------------------------------------------------------------------------------
function FACTO(x : integer):longint;
var F,i : integer;
BEGIN
        IF x=0 THEN
                BEGIN
                FACTO := 1;
                END
        ELSE
                BEGIN
                 F:=1;
                 For i:=1 To x Do
                    begin
                     F:= F*i;
                     FACTO:=F;
                    end;
                    END;
END;
//{4}------------------------------------------------------------------------------------------------
function NBPREM(n : longint):boolean;
var i,r,nbdiv:longint; k:boolean;
BEGIN
	k:=false;
	nbdiv:=0;
	For i:=2 To N div 2 Do
	begin
		If N mod i = 0 Then
		nbdiv := nbdiv +1;
	end;
	if (nbdiv = 0) and( N>1) then k:= true else k:= false;
	NBPREM:= k;
END;
//{5}-------------------------------------------------------------------------------------------------
function BDEC(n,b : longint):longint;
var ndec,p,i : longint;
BEGIN
	ndec:=0;
	For p:=0 To ( NBPOS(n) -1) Do
	begin
		ndec := ndec +(N mod 10)*PUISS(b,p);
		N:= N div 10;
    end;
    BDEC:=ndec;
END;
//{6}---------------------------------------------------------------------------------------------------
function DECB(n:longint; b:integer):longint;
var i:integer; nb:longint;
BEGIN
    i:=0;
    nb:=0;
    repeat
         nb := nb + (N mod b)*PUISS(10,i);
         i:= i+1;
         N := N div b;
    until N=0;
    DECB:=nb;
END;
//{7}--------------------------------------------------------------------------------------------------
function CONC(a,b : longint):longint;
BEGIN
	CONC:= a*PUISS(10,NBPOS(b))  +b;
END;
//{8}--------------------------------------------------------------------------------------------------
function NBPARF(n:longint):boolean;
 var p,i,a : longint; k:boolean;
BEGIN
 	k:=false;
 	For p:=1 To N Do
 	begin
 		a:=0;
 		For i:=1 To p div 2 Do
 		begin
 			if p mod i = 0 then
 			a:= a+i;
                 end;
         end;
    if a=p then k:= true else k:=false;
    NBPARF:=k;
END;
//{9}----------------------------------------------------------------------------------------------------
function MAXCH(N:longint):integer;
var inter:integer;
BEGIN
	inter:=0;
	N:= abs(N);
	repeat
	if (N mod 10 > inter) then
	begin
		inter := N mod 10;
	end;
        N := N div 10;
        until N=0;
	MAXCH:= inter;
END;
//{10}-------------------------------------------------------------------------------------------------------
function MINCH(n:longint):integer;
var  inter:integer;
BEGIN
	inter:= 9;
	N := abs(N);
	repeat
	if N mod 10 < inter then
	begin
		inter := N mod 10;
	end;
        N := N div 10;
	until N=0;
	MINCH := inter;
END;
//{11}------------------------------------------------------------------------------------------------------
function PGCD(x,y:longint):longint;
var r:integer;
Begin
x:=Abs(x);
y:=Abs(y);
If x*y=0 Then
        Begin
        if x>=y Then PGCD:=x else PGCD:=y;
        End
Else
        Begin
        r:=x mod y;
        while r>0 Do
                Begin
                x:=y;
                y:=r;
                r:=x mod y;
                End;
                PGCD:=y;
        End;
End;
//{12}---------------------------------------------------------------------------------------------------------
function PPCM(x,y:longint):longint;
var multx,multy:longint;
Begin
x:=abs(x);
y:=abs(y);
multx:=x;
multy:=y;
While multx <> multy Do
        Begin
        If multx > multy Then multy:=multy+y else multx:=multx+x;
        End;
PPCM:=multx;
End;
//{13}----------------------------------------------------------------------------------------------------------
function SOMDIV(N:longint):longint;
var i,som:integer;
BEGIN
    som:=1+N;
    for i:=2 to n div 2 do
        begin
        if (N mod i=0) then
                begin
                som:=som +i;
                end;
        end;
    SOMDIV:=som;
END;
//{14}-----------------------------------------------------------------------------------------------------------
 function CROISS(N:longint):longint;
 var reord,x:longint; i:integer;
BEGIN
    reord:=0;
    For i:=1 to 9 Do
        Begin
        x:=n;
        While x>0 Do
                Begin
                If x mod 10=i then reord:=10*reord+i;
                x:=x div 10;
                End;
        End;
    CROISS:=reord;
END;
//{15}----------------------------------------------------------------------------------------------------------
function DECROISS(N:longint):longint;
var reord,x:longint; i:integer;
BEGIN
    reord:=0;
    For i:=9 Downto 0 Do
        Begin
        x:=n;
        while x>0 Do
                Begin
                If x mod 10=i Then reord:=reord*10+i;
                x:=x div 10;
                End;
        End;
   DECROISS:=reord;
END;
//{16}----------------------------------------------------------------------------------------------------------
function FREQCH(x,y:longint):integer;
var frq,i:integer;
BEGIN
    frq:=0;
    For i:=1 To NBPOS(x) Do
        Begin
        If (x mod 10=y) or (x mod 10=-y) Then frq:=frq+1;
        x:=x div 10;
        End;
    FREQCH:=frq;
END;
//{17}------------------------------------------------------------------------------------------------------------
function FIBO(U0,U1,N:integer):longint;
var der,avder,i,v:longint;
BEGIN
    avder:=u0;
    der:=u1;
        FOR i:=2 TO  N  DO
                BEGIN
                v:=avder+der;
                avder:=der;
                der:=v;
                END;
    FIBO:=v;
END;
//{18}------------------------------------------------------------------------------------------------------------
 function MIRROR(n:longint):longint;
var s:longint;
BEGIN
    s:=0;
        Repeat
                s:=(s*10)+(n mod 10);
                n:=n div 10;
        Until n=0;
    MIRROR:=s;
END;
//{19}----------------------------------------------------------------------------------------------------------
function EXTRACTCH(n:longint; npos:integer):integer;
var extd,next:integer;
BEGIN
    If npos>NBPOS(n) Then
        next:=0
    else
        Begin
        extd:=n div PUISS(10,npos-1);
        next:=extd mod 10;
        End;
    EXTRACTCH:=next;
END;

//{20}-----------------------------------------------------------------------------------------------------------
 function SWAP(n:longint):longint;
 var hbit,lbit,signe:integer;
BEGIN
    If n<>0 Then signe:=abs(n) div n else signe:=1;
    n:=abs(n);
    hbit:=EXTRACTCH(n,NbPos(n));
    lbit:=n mod 10;
    SWAP:=signe*(n+((lbit-hbit)*(PUISS(10,NbPos(n)-1)-1)));
End;
//{21}-----------------------------------------------------------------------------------------------------------------
 function ABOND(n:longint):boolean;
 var   k : boolean;
 BEGIN
 	k:=false;
 	 If SOMDIV(n)>n then
         k :=True;
    ABOND:=k;
END;
// {26}-----------------------------------------------------------------------------------------------------------
function PREMPROCHE(n:longint):longint;
var inf,sup : longint;
BEGiN
	inf:=n;
	sup:=n;
	WHILE not NBPREM(inf) AND not NBPREM(sup) DO
	BEGIN
    inf := inf -1;
    sup := sup+1;
END;
IF NBPREM(inf) THEN PREMPROCHE:=inf;
IF NBPREM(sup) THEN PREMPROCHE:=sup;
END;
//{27}--------------------------------------------------------------------------------------------------------------
function EXTRACTNB(x,pos,k:longint):longint;
BEGIN
EXTRACTNB:=(x div PUISS(10,pos-1))mod PUISS(10,k);
END;
//{31}--------------------------------------------------------------------------------------------------------------
function NBDIV(N:longint):longint;
var i,cpt:integer;
BEGIN
    cpt:=2;
    for i:=2 to (N div 2) do
        begin
        if (N mod i=0) then
                begin
                cpt:=cpt+1;
                end;

        end;
    NBDIV:=cpt;
END;
//{40}-----------------------------------------------------------------------------------------------
function GRAY (Ng:longint):longint;
var cpt, nb1, Nb, ch, a, res:longint;
BEGIN
cpt:=0;
nb1:=FREQCH(Ng,1);
If ((nb1 mod 2)=0) Then
     Begin
     ch:= Ng mod 10;
     If ch=1 Then
         begin
         res:= REMPLACECH(Ng,0,1);
         end
     Else
         begin
         res:=REMPLACECH(Ng,1,1);
         end;
     end
Else
     begin
     Nb:=Ng;
     Repeat
         a:= Nb mod 10;
         Nb:= Nb div 10;
         cpt:=cpt+1;
     Until (a=1);
     ch:= EXTRACTCH(Ng,cpt+1);
     If ch=1 Then
         begin
         res:= REMPLACECH(Ng,0,cpt+1);
         end
     Else
         begin
         res:=REMPLACECH(Ng,1,cpt+1);
         end;
     end;
GRAY:=res;
END;