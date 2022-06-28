PROGRAM Calculatrice;
VAR a, b, result: integer;
	op: string;

BEGIN
	writeln('1. Pour effectuer une addition, choisissez l''operateur +');
	writeln('2. Pour effectuer une soustraction, choisissez l''operateur -');
	writeln('3. Pour effectuer une multiplication, choisissez l''operateur *');
	writeln('4. Pour effectuer une division, choisissez l''operateur /');

	writeln('Entrer la valeur de le 1er entier: ');
	readln(a);
	writeln('Entrer la valeur de le 2eme entier: ');
	readln(b);
	writeln('choisissez un operateur: ');
	readln(op);

	if op='+' then result:=a+b;
	if op='-' then result:=a-b;
	if op='*' then result:=a*b; 
	if op='/' then result:=a DIV b;

	writeln('Resultat: ', a, op, b, ' = ', result);
END.
