program exo1;
var nb_total, nb_pair_total: integer;

procedure Affiche_Pairs();
    var nb: integer;
    begin
        nb_total := 0;
        repeat
            writeln('Entrez un nombre entier: ');
            read(nb);

            if nb <> -1 then
                begin
                    nb_total := nb_total + 1;
                    if nb mod 2 = 0 then
                        begin
                            nb_pair_total := nb_pair_total + 1;
                        end; 
                end;
        until nb = -1;
    end;

function Pourcentage_Pairs(): real;
    begin
        Pourcentage_Pairs := nb_pair_total * 100 / nb_total;
    end;

begin
    Affiche_Pairs();
    if nb_total > 0 then
        writeln(Pourcentage_Pairs():0:2, '%')
end.
