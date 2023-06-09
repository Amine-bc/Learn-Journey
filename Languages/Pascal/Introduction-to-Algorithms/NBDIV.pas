Program NBDIV ;
Uses Wincrt ;
Var
  n,i,cpt: Integer;
Begin
  Read(n);
  cpt := 2;
  For i:=2 To (N Div 2) Do
    Begin
      If (N Mod i=0) Then
        Begin
          cpt := cpt+1;
        End;
    End;
  Writeln(cpt);
  Readkey;
End.