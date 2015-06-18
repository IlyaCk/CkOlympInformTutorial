{$mode delphi}

var mode : integer;
    Cx, Cy, CR : integer;
    i, N : integer;
    x, y : array[1..1000] of integer;
    num_inside, num_at, num_outside : integer;
	
BEGIN
  readln(mode);
  if mode = 1 then 
    readln(Cx, Cy, CR)
  else begin
    Cx:=-1; Cy:=2; CR:=2;
    readln;
  end;
  readln(N);
  for i:=1 to N do
    readln(x[i], y[i]);
  num_inside := 0;
  num_at := 0;
  num_outside :=0;
  for i:=1 to N do
    if sqr(x[i] - Cx) + sqr(y[i] - Cy) = sqr(CR) then
      inc(num_at)
    else if sqr(x[i] - Cx) + sqr(y[i] - Cy) < sqr(CR) then
      inc(num_inside)
    else {sqr(x[i] - Cx) + sqr(y[i] - Cy) > sqr(CR)}
      inc(num_outside);
  writeln(num_inside, ' ', num_at, ' ', num_outside);
END.