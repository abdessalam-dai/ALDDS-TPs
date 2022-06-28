program exo2;
uses Math;
const
    a = 3;
    b = 4;
type Mat = array [1..a, 1..b] of real;
var M : Mat;

procedure Calculer(var M: Mat);
    var i, j: integer;
    begin
        for i := 1 to a do
            begin
                for j := 1 to b do
                    begin
                        if i = 1 then
                            M[i, j] := Power(2, j);
                        if i = 2 then
                            M[i, j] := 2 * j;
                        if i = 3 then
                            M[i, j] := j + 2;
                    end;
            end;
    end;

procedure Afficher(M: Mat);
    var i, j: integer;
    begin
        for i := 1 to a do
            begin
                for j := 1 to b do
                    write(M[i, j]:0:0, ' | ');
            writeln;
            end;
    end;

procedure Transpose(M: Mat);
    var i, j: integer;
        MT: array[1..b, 1..a] of real;
    begin
        writeln('La Matrice transpose:');
        for i := 1 to b do
            begin
                for j := 1 to a do
                    begin
                        MT[i, j] := M[j, i]
                    end;
            end;
        for i := 1 to b do
            begin
                for j := 1 to a do
                    begin
                        write(MT[i, j]:0:0, ' | ');
                    end;
                writeln;
            end;
    end;

begin
    Calculer(M);
    Afficher(M);
    Transpose(M);
end.
    