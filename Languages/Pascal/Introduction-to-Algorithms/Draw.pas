Program Draw ;
uses crt;
Var
  x,i,j,k,l,f: Integer ;
Begin
  read(x) ;
	f := x ;
  If x Mod 2 = 0 Then
	begin 
    For i := 1 To x  do
        Begin
        for j := 1 to x do
				Write('*') ;
        Writeln('');
        End;
        End
				else
				while f>0 do
				begin
				for k := x downto 1 do 
				Write(' ');
        for l := 1 to f do
				Write('*') ;
				Writeln('');
        f:=f-1 ;
				end;
				readkey
        End.