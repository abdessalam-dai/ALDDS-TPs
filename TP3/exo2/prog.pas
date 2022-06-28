PROGRAM EXO2;
// USES SysUtils;
VAR N1: string;
    N, i, nb_chif, som, r: integer;
    march: boolean;
BEGIN
    write('Entrez un nombre entier: ');
    read(N);
    // Le nombre de chiffres qui les compose
    if N < 0 then
        N:=Abs(N);
    Str(N, N1);
    // Autre solution pour convertir un entier (integer) en chaine de caractere (string) 
    {
    N1 := inttostr(N);
    }
    nb_chif:=Length(N1);

    // Ma solution
    {
    i:=1;
    nb_chif:=0;
    march:=true;
    while march do
        begin
            if ((N=0) or (N=1)) or ((i<N) and (N<i*10)) then
                march:=false
            else
                begin
                    nb_chif:=nb_chif+1;
                    i:=i*10;
                end;
            if (N = i) or (N = i*10) then
                march:=false;
        end;
    La somme de ces chiffres 
    }
    som:=0;
    while (N<>0) do
        begin
            r:=N MOD 10;
            som:=som+r;
            N:=N DIV 10;
        end;
    writeln('Le nombre de chiffres qui le compose est: ', nb_chif);
    writeln('La somme de ces chiffres est: ', som);
END.