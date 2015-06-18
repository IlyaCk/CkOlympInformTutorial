var i, n, m : longint;
    res : int64;
BEGIN
  readln(n,m);
  res:=0;
  for i:=1 to n do
    res := res + sqr(int64(i));
  res:=res mod m;
  if res<>0 then
    res := m - res;
  writeln(res);
END.
