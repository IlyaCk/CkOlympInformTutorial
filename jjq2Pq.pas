var s,s1:string;
  a,b:char;
  i,j:longint;
BEGIN
readln(s1);
readln(s);
a:=s1[1];
b:=s1[3];
case a of
'a': case b of
  'b': write('ab');
  'c': if s[2]='1' then write('a','b','c')
     else if s[4]='1' then write('a','d','c')
     else if (s[5]='1')and(s[6]='1')and(s[7]='1') then write('a','e','f','g,','c')
     else if (s[5]='1')and(s[8]='1')and(s[7]='1') then  write('a','e','h','g','c')
     else write ('NO');
  'd': write('a','d');
  'e': write('a','e');
  'f': if s[2]='1' then write('a','b','f')
    else if s[5]='1' then  write('a','e','f')
    else if (s[4]='1')and(s[3]='1')and(s[7]='1') then  write('a','d','c','g','f')
    else if (s[4]='1')and(s[8]='1')and(s[7]='1') then  write('a','d','h','g','f')
    else write ('NO');
  'g': if (s[2]='1')and(s[3]='1') then write('a','b','c','g')
    else if (s[4]='1')and(s[3]='1') then write('a','d','c','g')
    else if (s[5]='1')and(s[6]='1')and(s[7]='1') then write('a','e','f','g')
    else if (s[5]='1')and(s[8]='1') then  write('a','e','hg')
    else if (s[4]='1')and(s[7]='1')and(s[8]='1') then write('a','d','h','g')
    else if (s[5]='1')and(s[2]='1')then write('a','b','f','g')
    else write ('NO');
  'h': if s[4]='1' then write('a','d','h')
    else if s[5]='1' then  write('a','e','h')
    else if (s[2]='1')and(s[3]='1')and(s[7]='1') then write('a','b','c','g','h')
    else if (s[2]='1')and(s[6]='1')and(s[7]='1') then write('a','b','f','g','h')
    else write ('NO');
end;
'b': case b of
  'a': write('b','a');
  'c': write('b','c');
  'd': if s[3]='1' then write('b','c','d')
    else if s[1]='1' then write('b','a','d')
    else if (s[8]='1')and(s[6]='1')and(s[7]='1') then write('b','f','g','h','d')
    else if (s[6]='1')and(s[8]='1')and(s[5]='1') then write('b','f','e','h','d')
    else write ('NO');
  'e': if s[1]='1' then write('b','a','e')
    else if s[6]='1' then  write('b','f','e')
    else if (s[3]='1')and(s[6]='1')and(s[7]='1') then write('b','c','g','f','e')
    else if (s[3]='1')and(s[8]='1')and(s[7]='1') then write('b','c','g','h','e')
    else write ('NO');
  'f': write('b','f');
  'g': if s[3]='1' then write('b','c','g')
    else if s[6]='1' then write('b','f','g')
    else if (s[1]='1')and(s[5]='1')and(s[8]='1') then write('b','a','e','h','g')
    else if (s[1]='1')and(s[4]='1')and(s[8]='1') then write('b','a','d','h','g')
    else write ('NO');
  'h': if (s[1]='1')and(s[5]='1')then write('b','a','e','h')
    else if (s[3]='1')and(s[7]='1') then write('b','c','g','h')
    else if (s[6]='1')and(s[7]='1') then write('b','f','g','h')
    else if (s[5]='1')and(s[7]='1') then  write('b','f,','e','h')
    else if (s[1]='1')and(s[4]='1') then  write('b','a','d','h')
    else if (s[3]='1')and(s[4]='1') then  write('b','c','d','h')
    else write ('NO');
end;
'c': case b of
  'a': if s[4]='1' then write('c','d','a')
    else if s[2]='1' then  write('c','b','a')
    else if (s[5]='1')and(s[6]='1')and(s[7]='1') then write('c','g','f','e','a')
    else if (s[7]='1')and(s[8]='1')and(s[5]='1') then write('c','g','h','e','a')
    else write ('NO');
  'b': if s[2]='1' then write('c','b');
  'd': if s[4]='1' then write('c','d');
  'e': if (s[7]='1')and(s[5]='1')and(s[8]='1') then write('c','g','h','e')
    else if (s[5]='1')and(s[7]='1')and(s[6]='1') then write('c','g','f','e')
    else if (s[4]='1')and(s[1]='1')and(s[5]='1') then  write('c','d','a','e')
    else if (s[5]='1')and(s[1]='1')and(s[2]='1') then  write('c','b','a','e')
    else if (s[4]='1')and(s[8]='1')and(s[5]='1') then  write('c','d','h','e')
    else if (s[2]='1')and(s[6]='1')and(s[5]='1') then  write('c','b','f','e')
    else  write ('NO');
  'f': if s[2]='1' then write('c','b','f')
    else if s[7]='1' then  write('c','g','f')
    else if (s[4]='1')and(s[8]='1')and(s[5]='1') then  write('c','d','h','e','f')
    else if (s[4]='1')and(s[1]='1')and(s[5]='1') then  write('c','d','a','e','f')
    else write ('NO');
  'g': if s[7]='1' then write('c','g');
  'h': if s[4]='1' then write('c','d','h')
    else if s[7]='1' then  write('c','g','h')
    else if (s[2]='1')and(s[1]='1')and(s[5]='1') then  write('c','b','a','e','h')
    else if (s[2]='1')and(s[6]='1')and(s[5]='1') then  write('c','b','f','e','h')
    else write ('NO');
end;
'd': case b of
  'a': if s[1]='1' then write('d','a');
  'b': if s[1]='1' then write('d','a','b')
    else if s[2]='1' then  write('d','c','b')
    else if (s[6]='1')and(s[5]='1')and(s[8]='1') then  write('d','h','e','f','b')
    else if (s[8]='1')and(s[7]='1')and(s[6]='1') then  write('d','h','g','f','b')
    else write ('NO');
  'c': if s[3]='1' then write('d','c');
  'e': if s[1]='1' then write('d','a','e')
    else if s[8]='1' then  write('d','h','e')
    else if (s[6]='1')and(s[2]='1')and(s[3]='1') then  write('d','c','d','f','e')
    else if (s[6]='1')and(s[7]='1')and(s[3]='1') then  write('d','c','g','f','e')
    else write ('NO');
  'f': if (s[2]='1')and(s[3]='1') then write('d','c','b','f')
    else if (s[1]='1')and(s[2]='1') then  write('d','a','b','f')
    else if (s[8]='1')and(s[5]='1') then  write('d','h','e','f')
    else if (s[8]='1')and(s[7]='1') then  write('d','h','g','f')
    else if (s[1]='1')and(s[5]='1') then  write('d','a','e','f')
    else if (s[3]='1')and(s[7]='1') then  write('d','c','g','f')
    else  write ('NO');
  'g': if s[3]='1' then write('d','c','g')
    else if s[8]='1' then  write('d','h','g')
    else if (s[1]='1')and(s[2]='1')and(s[6]='1') then  write('d','a','b','f','g')
    else if (s[1]='1')and(s[5]='1')and(s[6]='1') then  write('d','e','f','g')
    else write ('NO');
  'h': if s[8]='1' then write('e','h');
end;
'e': case b of
  'a': if s[2]='1' then write('e','a');
  'b': if s[1]='1' then write('e','a','b')
    else if s[6]='1' then  write('e','f','b')
    else if (s[7]='1')and(s[3]='1')and(s[8]='1') then  write('e','h','g','c','b')
    else if (s[8]='1')and(s[4]='1')and(s[3]='1') then  write('e','h','d','c','b')
    else write ('NO');
  'c': if (s[7]='1')and(s[5]='1')and(s[8]='1') then write('e','h','g','c')
    else if (s[5]='1')and(s[7]='1')and(s[6]='1') then  write('e','f','g','c')
    else if (s[4]='1')and(s[1]='1')and(s[5]='1') then  write('e','a','d','c')
    else if (s[5]='1')and(s[1]='1')and(s[2]='1') then  write('e','a','b','c')
    else if (s[4]='1')and(s[8]='1')and(s[5]='1') then  write('e','h','d','c')
    else if (s[2]='1')and(s[6]='1')and(s[5]='1') then  write('e','f','b','c')
    else  write ('NO');
  'd': if s[1]='1' then write('e','a','d')
    else if s[8]='1' then  write('e','h','d')
    else if (s[6]='1')and(s[2]='1')and(s[3]='1') then  write('e','f','b','c','d')
    else if (s[6]='1')and(s[7]='1')and(s[3]='1') then  write('e','f','g','c','d')
    else write ('NO');
  'f': if s[7]='1' then write('e','h');
  'g': if s[8]='1' then write('e','h','g')
    else if s[6]='1' then  write('e','f','g')
    else if (s[1]='1')and(s[2]='1')and(s[3]='1') then  write('e','a','b','c','g')
    else if (s[1]='1')and(s[4]='1')and(s[3]='1') then  write('e','a','d','c','g')
    else write ('NO');
  'h': if s[8]='1' then write('e','h');
end;
'f': case b of
  'a': if s[2]='1' then write('f','b','a')
    else if s[5]='1' then  write('f','e','a')
    else if (s[7]='1')and(s[3]='1')and(s[4]='1') then  write('f','g','c','d','a')
    else if (s[8]='1')and(s[7]='1')and(s[4]='1') then  write('f','g','h','d','a')
    else write ('NO');
  'b': if s[2]='1' then write('d','a');
  'c': if s[2]='1' then write('f','b','c')
    else if s[7]='1' then  write('f,','g','c')
    else if (s[5]='1')and(s[1]='1')and(s[4]='1') then  write('f','e','a','d','c')
    else if (s[5]='1')and(s[8]='1')and(s[4]='1') then  write('f','e','h','d','c')
    else write ('NO');
  'd': if (s[2]='1')and(s[3]='1') then write('f','b','c','d')
    else if (s[1]='1')and(s[2]='1') then  write('f','b','a','d')
    else if (s[8]='1')and(s[5]='1') then  write('f','e','h','d')
    else if (s[8]='1')and(s[7]='1') then  write('f','g','h','d')
    else if (s[1]='1')and(s[5]='1') then  write('f','e','a','d')
    else if (s[3]='1')and(s[7]='1') then  write('f','g','c','d')
    else  write ('NO');
  'e': if s[5]='1' then write('d','c');
  'g': if s[7]='1' then write('e','h');
  'h': if s[5]='1' then write('f','e','h')
    else if s[7]='1' then  write('f','g','h')
    else if (s[2]='1')and(s[3]='1')and(s[4]='1') then  write('f','b','c','d','h')
    else if (s[1]='1')and(s[2]='1')and(s[4]='1') then  write('f','b','a','d','h')
    else write ('NO');
end;
'g': case b of
  'a': if (s[2]='1')and(s[3]='1')and(s[7]='1') then write('g','c','b','a')
    else if (s[4]='1')and(s[3]='1')and(s[7]='1') then  write('g','c','d','a')
    else if (s[5]='1')and(s[6]='1')and(s[7]='1') then  write('g','f','e','a')
    else if (s[5]='1')and(s[8]='1')and(s[7]='1') then  write('g','h','e','a')
    else if (s[4]='1')and(s[7]='1')and(s[8]='1') then  write('g','h','d','a')
    else if (s[5]='1')and(s[2]='1')and(s[7]='1') then  write('g','f','b','a')
    else write ('NO');
  'b': if s[6]='1' then write('g','f','b')
    else if s[3]='1' then  write('g','c','b')
    else if (s[8]='1')and(s[4]='1')and(s[1]='1') then  write('g','h','d','a','b')
    else if (s[8]='1')and(s[1]='1')and(s[5]='1') then  write('g','h','e','a','b')
    else write ('NO');
  'c': if s[2]='1' then write('g','c');
  'd': if s[3]='1' then write('g,','c','d')
    else if s[8]='1' then  write('g','h','d')
    else if (s[6]='1')and(s[2]='1')and(s[1]='1') then  write('g','f','b','a','d')
    else if (s[6]='1')and(s[5]='1')and(s[1]='1') then  write('g','f','e','a','d')
    else write ('NO');
  'e': if s[6]='1' then write('g','f','e')
    else if s[8]='1' then  write('g','h','e')
    else if (s[3]='1')and(s[4]='1')and(s[1]='1') then  write('g','c','d','a','e')
    else if (s[3]='1')and(s[2]='1')and(s[1]='1') then  write('g','c','b','a','e')
    else write ('NO');
  'f': write('g','f');
  'h': write('g','h');
end;
'h': case b of
  'a': if s[4]='1' then write('h','d','a')
    else if s[5]='1' then  write('a','e','h')
    else if (s[2]='1')and(s[3]='1')and(s[7]='1') then  write('h','g','c','b','a')
    else if (s[2]='1')and(s[6]='1')and(s[7]='1') then  write('h','g','f','b','a')
    else write ('NO');
  'b': if (s[1]='1')and(s[5]='1')and(s[8]='1') then write('h','e','a','b')
    else if (s[3]='1')and(s[7]='1')and(s[8]='1') then  write('h','g','c','b')
    else if (s[8]='1')and(s[6]='1')and(s[7]='1') then  write('h','g','f','b')
    else if (s[5]='1')and(s[8]='1')and(s[7]='1') then  write('h','e','f','b')
    else if (s[1]='1')and(s[8]='1')and(s[4]='1') then  write('h','d','a','b')
    else if (s[3]='1')and(s[8]='1')and(s[4]='1') then  write('h','d','c','b')
    else  write ('NO');
  'c': if s[4]='1' then write('h','d','c')
    else if s[7]='1' then  write('h','g','c')
    else if (s[2]='1')and(s[1]='1')and(s[5]='1') then  write('h','e','a','b','c')
    else if (s[2]='1')and(s[6]='1')and(s[5]='1') then  write('h','e','f','b','c')
    else write ('NO');
  'd': write('e','d');
  'e': write('e','h');
  'f': if s[5]='1' then write('h','e','f')
    else if s[7]='1' then  write('h','g','f')
    else if (s[2]='1')and(s[3]='1')and(s[4]='1') then  write('h','d','c','b','f')
    else if (s[1]='1')and(s[2]='1')and(s[4]='1') then  write('h','d','a','b','f')
    else write ('NO');
  'g': if s[4]='1' then write('g','h');
end;
end;
END.