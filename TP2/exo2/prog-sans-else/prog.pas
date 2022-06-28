PROGRAM MaximumNombre;
VAR a, b, c, max: real;

BEGIN

	writeln('Entrer la valeur de A: ');
	readln(a);
	writeln('Entrer la valeur de B: ');
	readln(b);
	writeln('Entrer la valeur de C: ');
	readln(c);

	// if a >= b then
	// 	if a >= c then
	// 		max:=a;
	// if b >= a then
	// 	if b >= c then
	// 		max:=b;
	// if c >= a then
	// 	if c >= b then
	// 		max:=c;

	max:=a;
	if max < b then
		max:=b;
	if max < c then
		max:= c;


	writeln('Le maximum nombre entre A et B et C est: ', max);

END.
