{$mode delphi}

uses SysUtils;

var k, N, i, j : integer;  //32-bit due to {$mode delphi}
    s : string;

BEGIN
  Readln(k, N);
  for i:=2 to k do begin
    s := IntToStr(N);
    for j:= 1 to Length(s) do
      N := N + StrToInt(s[j]);
  end;
  writeln(N);
END.