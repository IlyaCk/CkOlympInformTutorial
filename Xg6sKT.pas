{This solution is an extra-optimized brute-force.
It should gain about 75% of points.}

program a;

{$APPTYPE CONSOLE}

var s : string;
    ABC012 : string;
    c : Char;
    N, passwords_generated : longint;
    i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12 : byte;

BEGIN
  ABC012 := '';
  for c := 'A' to 'Z' do
    ABC012 := ABC012 + c;
  for c := '0' to '9' do
    ABC012 := ABC012 + c;
  Readln(N);
  passwords_generated := 0;

  s:='A';
  for i1 := 1 to 36 do begin
    s[1] := ABC012[i1];
    Inc(passwords_generated); //writeln(passwords_generated, #9, s);
    if passwords_generated = N then begin
      Writeln(s); exit;
    end;
  end;

  s:='AB';
  for i1 := 1 to 35 do begin
    s[1] := ABC012[i1];
    for i2 := i1+1 to 36 do begin
      s[2] := ABC012[i2];
      Inc(passwords_generated); //writeln(passwords_generated, #9, s);
      if passwords_generated = N then begin
        Writeln(s); exit;
      end;
    end;
  end;

  s:='ABC';
  for i1 := 1 to 34 do begin
    s[1] := ABC012[i1];
    for i2 := i1+1 to 35 do begin
      s[2] := ABC012[i2];
      for i3:=i2+1 to 36 do begin
        s[3] := ABC012[i3];
        Inc(passwords_generated); //writeln(passwords_generated, #9, s);
        if passwords_generated = N then begin
          Writeln(s); exit;
        end;
      end;
    end;
  end;

  s:='ABCD';
  for i1:=1 to 33 do begin
    s[1] := ABC012[i1];
    for i2:=i1+1 to 34 do begin
      s[2] := ABC012[i2];
      for i3:=i2+1 to 35 do begin
        s[3] := ABC012[i3];
        for i4:=i3+1 to 36 do begin
          s[4] := ABC012[i4];
          Inc(passwords_generated); //writeln(passwords_generated, #9, s);
          if passwords_generated = N then begin
            Writeln(s); exit;
          end;
        end;
      end;
    end;
  end;

  s:='ABCDE';
  for i1:=1 to 32 do begin
    s[1] := ABC012[i1];
    for i2:=i1+1 to 33 do begin
      s[2] := ABC012[i2];
      for i3:=i2+1 to 34 do begin
        s[3] := ABC012[i3];
        for i4:=i3+1 to 35 do begin
          s[4] := ABC012[i4];
          for i5:=i4+1 to 36 do begin
            s[5] := ABC012[i5];
            Inc(passwords_generated); //writeln(passwords_generated, #9, s);
            if passwords_generated = N then begin
              Writeln(s); exit;
            end;
          end;
        end;
      end;
    end;
  end;

  s:='ABCDEF';
  for i1:=1 to 31 do begin
    s[1] := ABC012[i1];
    for i2:=i1+1 to 32 do begin
      s[2] := ABC012[i2];
      for i3:=i2+1 to 33 do begin
        s[3] := ABC012[i3];
        for i4:=i3+1 to 34 do begin
          s[4] := ABC012[i4];
          for i5:=i4+1 to 35 do begin
            s[5] := ABC012[i5];
            for i6:=i5+1 to 36 do begin
              s[6] := ABC012[i6];
              Inc(passwords_generated); //writeln(passwords_generated, #9, s);
              if passwords_generated = N then begin
                Writeln(s); exit;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

  s:='ABCDEFG';
  for i1:=1 to 30 do begin
    s[1] := ABC012[i1];
    for i2:=i1+1 to 31 do begin
      s[2] := ABC012[i2];
      for i3:=i2+1 to 32 do begin
        s[3] := ABC012[i3];
        for i4:=i3+1 to 33 do begin
          s[4] := ABC012[i4];
          for i5:=i4+1 to 34 do begin
            s[5] := ABC012[i5];
            for i6:=i5+1 to 35 do begin
              s[6] := ABC012[i6];
              for i7:=i6+1 to 36 do begin
                s[7] := ABC012[i7];
                Inc(passwords_generated); //writeln(passwords_generated, #9, s);
                if passwords_generated = N then begin
                  Writeln(s); exit;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;

END.
