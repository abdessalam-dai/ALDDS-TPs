PROGRAM Q6;
uses
	math;
Var
	a, b, c: integer;
	w,x,y,z: real;
begin
	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Entrer la valeur de B: ');
	readln(b);
	writeln('Entrer la valeur de C: ');
	readln(c);

	// w:=(-b+Sqr(Power(b,2)-4*a*c))/(2*a);
	w:= (-b+Sqr(b*b-4*a*c))/(2*a);

	x:=2*a*Exp(b+c);

	y:=Power(2, 4);
	// y:=2*2*2*2;

	// z:=Power(5,a*b)/(b*c);
	z:=(Exp(a*b*Ln(5)))/(b*c);

	writeln('(-b+Sqr(b*b-4*a*c))/(2*a) = ', w);
	writeln('2*a*Exp(b+c) = ', x);
	writeln('2^4 = ', y);
	writeln('(5^(a*b))/(b*c) = ', z);
end.
