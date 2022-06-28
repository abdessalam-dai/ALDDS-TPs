PROGRAM Q2;
Var a, b: String;
begin
	writeln('Entrer A: ');
	readln(a);
	writeln('Entrer B: ');
	readln(b);
	writeln('La longeur de A: ', Length(a));
	writeln('La longeur de B: ', Length(b));
	writeln('La concatenation de A et B: ', a + b);
	(* writeln('La concatenation de A et B: ', Concat(a,b)); *)
end.
