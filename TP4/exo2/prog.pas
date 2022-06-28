program exo2;
uses math;
var n, i: integer;
    x, som, val: real;

function Fact(n: integer): integer;
    var i: integer;
    begin
        Fact := 1;
        for i := 2 to n do
            Fact := Fact * i;
    end;

begin
    repeat
        writeln('SVP! Entrez un nombre N >= 0: ');
        read(n);

        if n >= 0 then
            begin
                som := 0;
                writeln('Entrez la valeur de le nombre X: ');
                read(x);
                for i := 0 to n do
                    begin
                        val := Power(x, i) / Fact(i);
                        som := som + val;
                    end;
                writeln('e^', x, ' = ', som);
            end;
    until n >= 0;
end.