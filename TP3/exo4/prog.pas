PROGRAM EXO4;
USES math;
VAR NStr: string;
    N1: real;
    N, t, res, j, nb_chif: integer;

BEGIN
    // Lire le nombre N
    write('Entrez un nombre entier: ');
    read(N);
    t:=N;

    // Calculer le nombre de chiffres de N
    if N < 0 then
        N := Abs(N);
    Str(N, NStr);
    nb_chif := Length(NStr);

    // Inverser le nombre N
    N1 := 0;
    j := 1;
    while t <> 0 do
        begin
            res := t MOD 10;
            N1 := N1 + (res * Power(10, nb_chif -j));
            t := t DIV 10;
            j := j + 1;
        end;
    writeln('N = ', N, ' l''inverse est N1 = ', N1:nb_chif:0);
END.