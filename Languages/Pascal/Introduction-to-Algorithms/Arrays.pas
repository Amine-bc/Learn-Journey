Program Exo51;
Uses WinCrt;
Type
heures= 1..24;
Jour = Record
   date:String[8];
	 Temp:Array[heures] Of Integer;
	 end;
   Tabobj = Array[1..7] Of Jour;
var
T:Tabobj ;
ph:String;
h:heures;
res:LongInt;

//LES Modules Utilisés
 {-----------------------------------}
Procedure ALEA_Temp(Var T :Tabobj);
Var i,j:Integer;
Begin
Randomize ;
For i:=1 To 7 Do
Begin//for1
For j:=1 To 24 Do
Begin//for2
T[i].Temp[j] :=  Random (61)-10;
end;//for2
end;//for1
End; //fin Alea_Temp
{-----------------------------------}
Function Rec_Temp( ph : String ;  h:heures ;   T:Tabobj ):Integer;
Label 1,2;
Var i,v,Temperature:Integer;
Begin
1:ClrScr;
Write('veuillez entrer un jour :');
Readln(ph);
for i:=1 To Length(ph) Do
ph[i]:=Upcase(ph[i]);
            If      ph='DIMANCHE' Then V:=1
            Else If ph='LUNDI'    Then V:=2
            Else If ph='MARDI'    Then V:=3
            Else If ph='MERCREDI' Then V:=4
						Else If ph='JEUDI'    Then V:=5
						Else If ph='VENDREDI' Then V:=6
						Else If ph='SAMEDI'   Then V:=7
						Else
						goto 1;
2:Write('veuillez entrer l''heure :');
Readln(h);
if (h<1) or (h>24) Then
Begin//If
WriteLn('l''heure est faux');
Goto 2;
end;//If
Temperature:=T[v].Temp[h];
Rec_Temp:=Temperature;
End;
{-----------------------------------}

{Programme principale}

Begin
ALEA_Temp(T);
res:= Rec_Temp(ph,h,T);
Write('La temperature :',res);
end.

