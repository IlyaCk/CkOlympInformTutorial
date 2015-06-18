{Реалізація учасника Середенка Олександра, з дрібними модифікаціями}

var m:array[0..4999, 0..4999] of integer; 
    k,i,j,x,y,x1,y1,r,p: longint;

begin
  readln(p);
  readln(x,y);
  r:=0;
  for k:=1 to p-1 do begin
    readln(x1, y1);
    if x1>x then begin
      for i:=x to (x1-1) do m[i, y]:= m[i,y]+1;
    end;
    if x1<x then begin
      for i:=x downto (x1+1) do m[i, y]:= m[i,y]+1;
    end;
    if y1>y then begin
      for i:=y to (y1-1) do m[x,i]:=m[x,i]+1;
    end;
    if y1<y then begin
      for i:=y downto (y1+1) do m[x,i]:=m[x,i]+1;
    end;
    x:=x1;
    y:=y1;
  end;
  for i:=0 to 4999 do 
    for j:=0 to 4999 do 
      if m[i,j]>1 then 
         r:=r+1;
  writeln(r);
end.
