
program TP;
var a, b: Integer;
begin
	writeln('Voici mon premier programme Pascal');
	write('Taper le premier nombre: ');
	readln(a);
	writeln('Taper le deuxieme nombre: ');
	readln(b);
	writeln('a + b = ', a+b); (* Addition a+b *)
	writeln('a - b = ', a-b); (* Soustraction a-b *)
	writeln('a * b = ', a*b); (* Produit a*b *)
	writeln('a / b = ', a/b); (* Division a/b *)
end.
