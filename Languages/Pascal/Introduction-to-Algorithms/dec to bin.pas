Program dec_to_bin;
Uses Crt ;
Var
  n,i,C,j,Power,Nb,Power1 : Integer ;
Begin
  Writeln('entrer votre nombre');
  Readln(n);
  If n <> 0 Then
    Begin
      Nb := 0 ;
      i := -1 ;
      While n Div 2 <> 0 Do
        Begin
          i := i+1 ;
          C := n Mod 2 ;
          n := n Div 2 ;
          Power := 1 ;
          For j:=1 To i Do
            Begin
              Power := Power*10;
            End;
          Nb := Nb+C*Power ;
        End;
      i := i + 1 ;
      Power1 := 1 ;
      For j:=1 To i Do
        Begin
          Power1 := Power1*10;
        End;
      Nb := Nb + Power1 ;
      Writeln('votre nombre ',n,' en binaire est',Nb) ;
    End
  Else Writeln('votre nombre est 0') ;
  Readkey;
End.
