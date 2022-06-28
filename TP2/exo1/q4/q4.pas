PROGRAM Q4;
Var a: string;
begin
	writeln('Entrer une valuer: ');
	readln(a);
	// writeln(Copy(a, 1, 5), '-bejaia', Copy(a, 6, 7)); ma solution
	Insert('-bejaia', a, 6);
	writeln(a);
end.
