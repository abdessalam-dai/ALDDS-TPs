PROGRAM EXO5;
VAR a, b, i: integer;

BEGIN
    // Lire les deux nombres entiers a et b
    writeln('Entrez deux nombres entiers: ');
    readln(a,b);

    // Permutation de a et b si (b > a)
    if b > a then
        begin
            b:=a+b;
            a:=b-a;
            b:=b-a;
        end;

    // Faire les soustractions successives entre a et b
    i:=1;
    repeat
        writeln('La ', i, 'eme soustraction: ', a, ' - ', b, ' = ', a-b);
        a:=a-b;
        i:=i+1;
    until (a-b<0);

    // Afficher le reste de la division de a sur b
    writeln('Le reste de la division est ', a);
END.