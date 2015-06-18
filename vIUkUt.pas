var i, j : integer;
BEGIN
  readln(i, j);
  if i=j then
    if i=12 then
      writeln('12')
    else
      writeln('0')
  else
    writeln(i+j-1)
END.
