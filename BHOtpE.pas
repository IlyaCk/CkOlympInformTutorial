{$mode delphi}

var
  x1min, x1max, y1min, y1max,
  x2min, x2max, y2min, y2max,
  x, y, main_result : LongInt;


begin
  Readln(x1min, x1max, y1min, y1max);
  Readln(x2min, x2max, y2min, y2max);
  for x := -1000 to 999 do begin
    for y := -1000 to 999 do begin
      if  (x+0.5 > x1min) and (x+0.5 < x1max) and
          (y+0.5 > y1min) and (y+0.5 < y1max)
              or
          (x+0.5 > x2min) and (x+0.5 < x2max) and
          (y+0.5 > y2min) and (y+0.5 < y2max) then
        Inc(main_result);
    end;
  end;
  Writeln(main_result);
end.