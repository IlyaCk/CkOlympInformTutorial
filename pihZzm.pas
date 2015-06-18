program logcube;

{$mode delphi}

uses
  SysUtils;

type SetOfChars = set of 'a'..'h';

var vertex_mark : array['a'..'h'] of char;
    edges_to : array['a'..'h'] of SetOfChars;
    start, c, finish : char;
    min_way : string;

procedure look_from(curr_way : string; can_use : SetOfChars);
var curr_pos, next_pos : Char;
begin
  curr_pos := curr_way[Length(curr_way)];
  if curr_pos = finish then begin
    if Length(curr_way) < Length(min_way) then
      min_way := curr_way;
  end else begin
    for next_pos := 'a' to 'h' do
      if (vertex_mark[next_pos]='1') and (next_pos in can_use) and (next_pos in edges_to[curr_pos]) then
        look_from(curr_way + next_pos , can_use - [next_pos]);
  end
end;

begin
  edges_to['a'] := ['b','d','e'];
  edges_to['b'] := ['a','c','f'];
  edges_to['c'] := ['b','d','g'];
  edges_to['d'] := ['a','c','h'];
  edges_to['e'] := ['f','h','a'];
  edges_to['f'] := ['e','g','b'];
  edges_to['g'] := ['f','h','c'];
  edges_to['h'] := ['e','g','d'];
  read(start, c, finish);
  Readln;
  for c := 'a' to 'h' do
    read(vertex_mark[c]);
  min_way := 'no,no,its_impossimble';

  look_from(start, ['a'..'h'] - [start]);

  if Length(min_way) > 8 then
    min_way := 'NO';
  Writeln(min_way);
end.
