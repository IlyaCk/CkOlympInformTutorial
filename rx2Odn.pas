var
  r1,r2,r3: integer;
BEGIN
  read(r1,r2,r3);
  if r2+r3<=r1 then 
    writeln('YES, the 1st disk is the maximal') 
  else
    if r1+r3<=r2 then 
      writeln ('YES, the 2nd disk is the maximal') 
    else 
      if r1+r2<=r3 then 
        writeln('YES, the 3rd disk is the maximal') 
      else
        writeln ('NO')
END.
