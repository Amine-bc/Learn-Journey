Program nb_chiffre ;
Uses Wincrt ;
Var
  n,nbch : Longint ;
Begin
  Readln(n);
  Repeat
    nbch := nbch+1 ;
    n := n Div 10 ;
  Until n=0 ;
  Writeln(nbch);
  Readkey;
End.
