Program exo24 ;
Uses Wincrt ;
Var
  n1,n2,i,l,k,m : Integer ;
  gdnumber : Boolean ;
Begin
  Writeln('entrer N1 ET N2') ;
  Readln(n1,n2) ;
  
  For i := n1 To n2 Do

    Begin
			gdnumber := True ;
      l := i ;
      While l <> 0 Do
        Begin
          k := l Mod 10 ;
          If k <> 0 Then
            Begin
              If i Mod k <> 0 Then
                gdnumber := False ;
            End;
          l := l Div 10 ;
        End;
      If gdnumber Then
        Writeln(i);
    End;
  Readkey ;
End.