PROGRAM EquationSndDegre;
VAR a, b, c, delta, x1, x2: real;

BEGIN

	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Entrer la valeur de B: ');
	readln(b);
	writeln('Entrer la valeur de C: ');
	readln(c);

	writeln('Votre equation:');
	writeln('(' , a, ')', 'x^2 + (', b, ')x + (', c, ') = 0');

	delta:=b*b-4*a*c;

	if delta > 0 then
		begin
			x1:=(-b-Sqrt(delta))/(2*a);
			x2:=(-b+Sqrt(delta))/(2*a);
			writeln('On a Δ > 0 donc cette equation a deux solution x1 et x2 tel que: ');
			writeln('x1 = ', x1);
			writeln('x2 = ', x2);
		end
	else
		if delta = 0 then
			begin
				x1:=(-b)/(2*a);
				writeln('On a Δ = 0 donc cette equation a une solution x1 tel que: ');
				writeln('x1 = ', x1);
			end
		else
			writeln('On a Δ < 0 donc cette equation n''a pas de solution');
END.
