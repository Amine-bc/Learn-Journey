Program Nb_parfait ;
Uses crt ;
Var
  N,S,Cpt,i : Longint ;
Begin
  Writeln('Entrer votre nombre') ;
  Readln (N);
  Write('Les nombres parfaits entre 1 et ',N,' sont') ;
  For Cpt := 1 To N Do
    Begin
      S := 0 ;
      For i := 1 To Cpt Div 2 Do
        Begin
          If Cpt Mod i = 0 Then
            S := S + i ;
        End;
      If s = Cpt Then
			Writeln(Cpt) ;
    End;
  Readkey ;
End.
