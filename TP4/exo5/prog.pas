program exo5;
const espace_total = 120;
var espace_reel, espace_rest: real;

procedure Calcul(disk_nom: string; perc: real);
    var espace: real;
    begin
        espace := (perc * espace_rest);

        espace_rest := espace_rest - espace;
        espace_reel := espace_reel + espace;

        writeln(disk_nom, espace);
    end;

begin
    espace_rest := espace_total;
    espace_reel := 0;

    Calcul('C: ', 0.5);
    Calcul('D: ', 0.6);
    Calcul('C: ', 1);

    writeln('Espace reel est ', espace_reel);
end.