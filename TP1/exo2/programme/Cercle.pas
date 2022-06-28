PROGRAM Cercle;
VAR Diam, A, P: real;
BEGIN
	writeln('Taper le diametre: ');
	readln(Diam);
	A:=3.14*Sqr(Diam);
	P:=2*3.14*Diam;
	writeln('L`aire = ', A);
	writeln('Le perimetre = ', P);	
END.
