var n, m, res : int64;
BEGIN
  readln(n,m);
  res:=(n*(n+1)) mod (6*m);
  res:=(res*(2*n+1)) mod (6*m);
  res:=res div 6;
  if res<>0 then
    res := m - res;
  writeln(res);
END.
