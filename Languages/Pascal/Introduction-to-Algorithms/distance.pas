program distance ;
uses crt ;
var n,i :integer ;
 s,t,d: real;
begin
read(n);
for i := 0 to n do begin
read(s,t);
d:= s*t*0.6 ;
write(d:5:0);
end;
readkey ;

end.