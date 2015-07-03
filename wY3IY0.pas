program A;

{$mode delphi}

var dividers : array[1..1000000] of int64;
    N : int64;
    N_ext : extended;
    sqrt_N, i, k : longint;

BEGIN
  readln(N);
  N_ext := N;
  sqrt_N := round(sqrt(N_ext));
  k:=0;
  for i:=1 to sqrt_N do begin
    if N mod i = 0 then begin
      k:=k+1;
      dividers[k]:=i;
      write(i,' ');
    end;
  end;
  if int64(dividers[k])*int64(dividers[k]) = N then
    k:=k-1;
  for i:=k downto 1 do
    write(N div dividers[i], ' ');
  writeln
END.