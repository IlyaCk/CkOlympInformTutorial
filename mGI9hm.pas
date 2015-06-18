program with_sort_;

{$mode delphi}

uses SysUtils;

const max_of_length:array[1..5] of Integer = (9, 99, 999, 9999, 99999);

function is_prime(n : integer):boolean;
var sqrt_n, p : Integer;
Begin
  if n < 2 then begin
    is_prime := false; exit
  end;
  for p:=2 to round(sqrt(n)) do
    if n mod p = 0 then begin
      is_prime := false; exit
    end;
  is_prime := true;
End;

function IntToStrLeadZeros(num_to_convert : integer; num_digits : integer) : string;
Begin
  Result := IntToStr(num_to_convert);
  if Length(Result) > num_digits then
    Writeln('Bad parameters IntToStrLeadZeros: ', num_to_convert, ', ', num_digits)
  else
    while Length(Result) < num_digits do
      Insert('0', Result, 1);
End;

function sort_chars_in_string(s : string) : string;
var i, k : Integer;
    t : Char;
Begin
  Result := s;
  for i:=Length(Result)-1 downto 1 do
    for k:=1 to i do
      if Result[k] > Result[k+1] then begin
        t:=Result[k]; Result[k]:=Result[k+1]; Result[k+1]:=t;
      end
End;

function is_co_annagramic_prime(n : integer; var proof : string) : Boolean;
var n_as_str, n_as_sorted_str : string;
    p, len : Integer;

Begin
  n_as_str := IntToStr(n);
  len := Length(n_as_str);
  n_as_sorted_str := sort_chars_in_string(n_as_str);
  for p:=2 to max_of_length[len] do
    if (n_as_sorted_str = sort_chars_in_string(IntToStrLeadZeros(p, len))) 
            and is_prime(p) then begin
      is_co_annagramic_prime := true;
      proof := IntToStrWithLeadingZeroes(p, len);
      Exit;
    end;
  is_co_annagramic_prime := False; // correct only due to length(s) is 
                   // always in range <= length of max_of_length array
End;

var n : Integer;
    m : Integer;
    proof : string;

BEGIN
  Readln(n);
  m:=n;
  while not is_co_annagramic_prime(m, proof) do
    Inc(m);
  writeln(m);
  writeln(proof);
END.

