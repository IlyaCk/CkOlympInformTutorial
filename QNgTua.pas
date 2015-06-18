var
  n,n1,n2,i,m:integer;
  a: array [1..1000] of integer;
  res:real;

begin
   readln (n);
   for i:=1 to n do read (a[i]);
   res:=0;
   readln (m);
   for i:=1 to m do
     begin
       readln (n1,n2);
       res:=res + ((a[n1]*a[n2])/(a[n1]+a[n2]));
       a[n1]:=0;
       a[n2]:=0;
     end;
   for i:=1 to n do res:=res+a[i];
   writeln (res);
end.