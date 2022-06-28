PROGRAM Q1;
Uses math;
Var a: real;
begin
	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Valeur absolue: ', Abs(a):5:5);
	writeln('Carre: ', Power(a, 2));
	if a < 0 then
		writeln('Erreur! votre nombre est inferieur a 0')
	else
		writeln('Racine carree: ', Sqrt(a));

	writeln('Valeur exponentielle: ', Exp(a));
	writeln('Partie entiere: ', Trunc(a));
end.
