PROGRAM Q5;
Var a, b, t: integer;
begin
	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Entrer la valeur de B: ');
	readln(b);
	writeln('A = ', a);
	writeln('B = ', b);
	writeln('Permutation...');
	// avec un temp variable
	// t:=a;
	// a:=b;
	// b:=t;

	// without un temp variable
	a:=a+b;
	b:=a-b;
	a:=a-b; 
	writeln('A = ', a);
	writeln('B = ', b);
end.
