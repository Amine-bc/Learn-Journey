Program puissance   ;
Uses crt ;
Var
  i,j,Power : Integer       ;
        Begin
				Readln(i)     ;
				Power := 1 ;
          For j:=1 To i Do
            Begin
              Power := Power*10;
            End;
						WriteLn(Power)  ;
						readkey;
        End.