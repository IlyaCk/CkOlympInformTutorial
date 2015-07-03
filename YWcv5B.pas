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

var i, j, k, N : longint;
    s : string;

begin
  Readln(k, N);
  for i:=2 to k do 
    N:=N + SumOfDigits(N);
  writeln(N);
end.
