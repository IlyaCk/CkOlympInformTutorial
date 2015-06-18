program SQ;

{$mode delphi}

uses
  SysUtils;

function sumOfDigits(n : integer) : Integer;
var s : string;
    k : Byte;
Begin
  s := IntToStr(n);
  Result := 0;
  for k := 1 to Length(s) do
    Result := Result + StrToInt(s[k]);
End;

var K, A, B, i, sqr_i, res : Integer;

begin
  Readln(a, b, K);
  res := 0;
  for i:=Round(Sqrt(a)) to Round(Sqrt(b)) do begin
    sqr_i := Sqr(i);
    if (sqr_i>=a) and (Sqr_i<=b) and (sumOfDigits(sqr_i) mod K = 0) then begin
      res := res + 1;
    end;
  end;
  Writeln(res);  
end.
