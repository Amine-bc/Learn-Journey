Program Hailstone_sequences ;//hello i am islam tobni i have 18 years and iam chikour
uses crt ;
Var
  Hse,i,m : Longint ;
Function Hseq(u:Longint): Longint ;
Begin
  While u > 1 Do
    Begin
      If u Mod 2 = 0 Then u := u Div 2
      Else u := 3*u+1 ;
      Hseq := u ;
    End;
End;
Begin
  Writeln('enter your number');
  Readln(m);
	ClrScr;
  For i:= 2 To m Do
    Begin
		WriteLn(i) ;
      hse := Hseq(i) ;
      Writeln(hse);
			writeln('                                                               ') ;
    End;
		readln;
End.