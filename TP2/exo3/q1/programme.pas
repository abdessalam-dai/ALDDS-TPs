PROGRAM ValuerAbsolue;
VAR a: integer;

BEGIN

	writeln('Entrer la valeur de l entier A: ');
	readln(a);

	if a < 0 then a:= a*-1;

	writeln('|a| = ', a);

END.