PROGRAM MaximumNombre;
VAR a, b, c, max: real;

BEGIN

	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Entrer la valeur de B: ');
	readln(b);
	writeln('Entrer la valeur de C: ');
	readln(c);

	if a > b then
		begin
			if a > c then
				max:=a
			else
				max:=c;
		end
	else
		begin
			if b > c then
				max:=b
			else
				max:=c;
		end;

	writeln('Le maximum nombre entre A et B et C est ', max);

END.
