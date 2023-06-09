program test ;
uses crt ;
var k,l,f : integer ;
gdnumber : Boolean ;
begin
gdnumber := True ;
read(l) ;
f := l ;
while l <> 0 do
begin
k := l mod 10 ;
if k <> 0 then
begin 
if f mod k <> 0 then
gdnumber := False ;
end;
l := l div 10 ;
end;
if gdnumber then
Write(f)  ;
readkey;
end.