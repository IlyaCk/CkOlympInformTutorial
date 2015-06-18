program D1rectonly;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  data : array[1..1000] of string;
  i, j, N, M : Integer;
  num_rooms, max_sz, curr_sz, curr_h, curr_w : Integer;

begin
  Readln(N,M);
  for i:=1 to N do
    Readln(data[i]);
  num_rooms := 0;
  max_sz := 0;
  for i:=2 to N-1 do
    for j:=2 to M-1 do
      if (data[i][j] = '0') and (data[i-1][j] = '1') and (data[i][j-1] = '1') then begin
        Inc(num_rooms);
        curr_h := 1;
        while data[i + curr_h][j] = '0' do
          Inc(curr_h);
        curr_w := 1;
        while data[i][j + curr_w] = '0' do
          Inc(curr_w);
        curr_sz := curr_h * curr_w;
        if curr_sz > max_sz then
          max_sz := curr_sz;
      end;
  Writeln(num_rooms);
  Writeln(max_sz);
end.
