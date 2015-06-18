{$mode delphi}

uses SysUtils;

var s_orig, s_deleted : string;
    i : Integer;
    n, curr_value, max_found : Integer;

BEGIN
  max_found := -1;
  Readln(n);
  s_orig := IntToStr(n);
  for i := 1 to Length(s_orig) do begin
    s_deleted := s_orig;
    Delete(s_deleted, i, 1);
    curr_value := StrToInt(s_deleted);
    if curr_value > max_found then
      max_found := curr_value;
  end;
  Writeln(max_found);
END.

