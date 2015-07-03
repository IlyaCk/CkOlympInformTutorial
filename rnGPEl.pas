program ideone;
var a, b, c, d : extended;
begin
  a := -3;
  writeln(a);
  while a < 0 do begin
    a := a + 0.3;
    writeln(a);
  end;
  // Додавши 10 разів по 0.3 до (-3), отримуємо (внаслідок похибок) не_зовсім 0
end.