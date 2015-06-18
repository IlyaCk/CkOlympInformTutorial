var a,b,k,n,i:longint;

function SumOfDigits(g:longint):longint;
var s:longint;
begin
  s:=0;
  repeat
    s:=s+g mod 10;
    g:=g div 10;
  until g=0;
  SumOfDigits:=s;
end;

BEGIN
  read(a,b,k);
  for i:=a to b do
    if (frac(sqrt(i))=0) then
      if (SumOfDigits(i) mod k =0) then n:=n+1;
  writeln(n);
END.