{$mode delphi}

function min(a, b : LongInt) : LongInt;
begin
  if a < b then
    Result := a
  else
    Result := b
end;

function max(a, b : LongInt) : LongInt;
begin
  if a > b then
    Result := a
  else
    Result := b
end;

var
  x1min, x1max, y1min, y1max,
  x2min, x2max, y2min, y2max,
  xCmin, xCmax, yCmin, yCmax,
  main_result : LongInt;

begin
  Readln(x1min, x1max, y1min, y1max);
  Readln(x2min, x2max, y2min, y2max);
  xCmin := max(x1min, x2min);
  xCmax := min(x1max, x2max);
  yCmin := max(y1min, y2min);
  yCmax := min(y1max, y2max);
  main_result :=
    (x1max-x1min)*(y1max-y1min) +
    (x2max-x2min)*(y2max-y2min);
  if (xCmax > xCmin) and (yCmax > yCmin) then
    main_result := main_result -
      (xCmax-xCmin)*(yCmax-yCmin);
  Writeln(main_result)
end.
