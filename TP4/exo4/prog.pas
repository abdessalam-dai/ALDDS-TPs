program exo4;
var ent: integer;
    N, fract: real;

function PartieEnt(n: real): integer;
    var trouv: boolean;
        i: integer;
    begin
        trouv := false;
        i := 0;
        while not(trouv) do
            begin
                if (n >= i) and (n < i + 1) then
                    begin
                        PartieEnt := i;
                        trouv := true;
                    end;
                i := i + 1;
            end;
    end;

function PartieFrac(n: real; ent: integer): real;
    begin
        PartieFrac := n - ent;
    end;
begin
    while True do
        begin
            writeln('SVP! Entrez un nombre positif: ');
            readln(N);
            ent := PartieEnt(n);
            fract := PartieFrac(n, ent);
            writeln('Partie entiere: ', ent);
            writeln('Partie fractionnaire: ', fract:0:10);
        end;
end.