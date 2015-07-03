function calc_real(a, b : real) : real;
var t1, t2, t3 : real;
Begin
	t1 := a+b;
	t2 := t1*t1*t1;
	t3 := t2 - (a*a*a + b*b*b);
	calc_real := t3 / (3*a*b);
	// теоретично, повинно бути a+b, бо (при ненульових a, b) 
	// все це можна аналітично скоротити до a+b
End;

function calc_extended(a, b : extended) : extended;
var t1, t2, t3 : extended;
Begin
	t1 := a+b;
	t2 := t1*t1*t1;
	t3 := t2 - (a*a*a + b*b*b);
	calc_extended := t3 / (3*a*b);
	// теоретично, повинно бути a+b, бо (при ненульових a, b) 
	// все це можна аналітично скоротити до a+b
End;

procedure run_both_funcs(a, b : extended);
Begin
	writeln('a = ', a, ', b = ', b);
	writeln(calc_real(a,b));
	writeln(calc_extended(a,b));
	writeln('Teoretychno, 2 poperedni ryadka rivni ', a + b);
End;

BEGIN
  run_both_funcs(2, 0.5);
  run_both_funcs(10, 0.1);
  run_both_funcs(100, 0.01);
  run_both_funcs(1e4, 1e-4);
  run_both_funcs(1e6, 1e-6);
  run_both_funcs(1e8, 1e-8);
END.