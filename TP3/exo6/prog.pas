PROGRAM EXO6;
USES math;
VAR n_dec: real;
    n_bin, t, res, i: integer; // longint;
    valid: boolean;

BEGIN
    // Lire le nombre sous forme binaire
    repeat
        write('Entrez un nombre sous forme binaire: ');
        readln(n_bin);
        t:=n_bin;
        valid:=true;
        while t <> 0 do
            begin
                res:=t MOD 10;
                if (res <> 0) and (res <> 1) then
                    valid:=false;
                t:=t DIV 10;
            end;
        if not(valid) then
            writeln('SVP le nombre doit etre en binaire!');
    until valid;

    // Convertir le nombre binaire au decimale
    t:=n_bin;
    n_dec:=0;
    i:=0;
    while t <> 0 do
        begin
            res:=t MOD 10;
            n_dec:=n_dec + res*Power(2, i);
            t:=t DIV 10;
            i:=i+1;
        end;
    writeln('(', n_bin, ')2 = ', '(', n_dec:0:0, ')10');
END.