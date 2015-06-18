var data : array[1..100] of integer;
    i, N, M, k1, k2 : integer;
    overall_sum : longint;
    res : real;
BEGIN
  readln(N);
  for i:=1 to N do begin
    read(data[i]);
    overall_sum := overall_sum + data[i];
  end;
  readln(M);
  for i:=1 to M do begin
    readln(k1, k2);
    res := res + 1/(1/data[k1]+1/data[k2]);
    overall_sum := overall_sum - (data[k1] + data[k2]);
  end;
  writeln(res + overall_sum)  
END.