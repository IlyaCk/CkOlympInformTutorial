program ISBN;

{$mode delphi}

uses
  SysUtils;

var s : string;
    idx, i : Integer;
    sum : Integer;
    v : Char;

begin
  Readln(s);
  idx := Pos(' ', s);
  for v := '0' to '9' do begin
    s[idx] := v;
    sum := 0;
    for i:=1 to 10 do
      sum := sum + (11-i) * StrToInt(s[i]);
    if sum mod 11 = 0 then begin
      Writeln(v);
    end;
  end;
end.
