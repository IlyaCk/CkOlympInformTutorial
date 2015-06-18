program lojban;
var lojb : string;
    i : integer;
BEGIN
  readln(lojb);
  for i:=1 to length(lojb) do
  begin
    case lojb[i] of
      'p': write('1');
      'r': write('2');
      'c': write('3');
      'v': write('4');
      'm': write('5');
      'x': write('6');
      'z': write('7');
      'b': write('8');
      's': write('9');
      'n': write('0');
    end;
  end;
END.