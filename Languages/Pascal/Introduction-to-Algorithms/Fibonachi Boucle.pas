Program Fibonachi ;
uses wincrt ;
Var
  U,U1,U2,n,i : Integer ;
  Done : Boolean ;
  X : String ;
	Label 1 ;
Begin
1:	ClrScr;
  Done := False ;
  While Done = False Do
    Begin
			 Writeln('------Suite Fibonacci------') ;
			 Writeln('(PS: the biggest term we can calculate is U45 because of pascal memory aspects)')  ;
      Writeln('enter the number of the term') ;
      Readln(n) ;
      If n > 1 Then
        Begin
          U1 := 1 ;
          U2 := 1 ;
          For i:=1 To n-1 Do
            Begin
              U := U1 + U2 ;
              U2 := U1 ;
              U1 := U ;
            End ;
          Writeln('U',n,' est egale á ',U) ;
        End;
      Writeln('Veut tu terminer oui ou non') ;
      Readln(X) ;
      If X='oui' Then
        Begin
          Done := False ;
					End
		Else
            Begin
              If X='non' Then
                Done := True ;
            End;
    End;
End.