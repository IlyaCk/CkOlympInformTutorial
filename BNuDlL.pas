program lojban;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var sAll, sCurr : string;
    i : Integer;

begin
  Readln(sAll);
  i := 1;
  while i < Length(sAll) do begin
    sCurr := Copy(sAll, i, 2);
    if sCurr = 'no' then
      write('0')
    else if sCurr = 'pa' then
      write('1')
    else if sCurr = 're' then
      write('2')
    else if sCurr = 'ci' then
      write('3')
    else if sCurr = 'vo' then
      write('4')
    else if sCurr = 'mu' then
      write('5')
    else if sCurr = 'xa' then
      write('6')
    else if sCurr = 'ze' then
      write('7')
    else if sCurr = 'bi' then
      write('8')
    else if sCurr = 'so' then
      write('9');
    i := i+2;
  end;
  Writeln;
end.
