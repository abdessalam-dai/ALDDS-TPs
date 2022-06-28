program exo3;
var phrase: string;

procedure NB_Mots(phrase: string);
    var i: integer;
        mot, mot_max: string;
        c, cp: char;
    begin

        // Supprimer les double espaces
        cp := 'A';
        for i := 1 to length(phrase) do
            begin
                c := phrase[i];
                if (c = ' ') and (cp = ' ') then
                    begin
                        phrase[i] := chr(0);
                    end;
                cp := c;
            end;
        writeln(phrase);

        // Ajouter un point '.' a la fin de la phrase si elle n'as pas
        if phrase[length(phrase)] <> '.' then
            phrase := phrase + '.';

        // Ajouter un espace avant le point '.' de la fin
        if phrase[length(phrase) - 1] <> ' ' then
            begin
                phrase[length(phrase)] := ' ';
                phrase := phrase + '.'; 
            end;

        // Lire la phrase mot par mot et trouver le mot maximale
        i := 1;
        mot := '';
        mot_max := '';
        repeat
            c := phrase[i];
            if c <> '.' then
                begin
                    if c = ' ' then
                        begin
                            writeln(mot);
                            if length(mot) > length(mot_max) then
                                begin
                                    mot_max := mot;
                                end;
                            mot := '';
                        end
                    else
                        begin
                            mot := mot + c;
                        end;
                end;
            i := i + 1;
        until c = '.';

        writeln('Le mot de la taille maximale est ', mot_max);
    end;

begin
    while True do
        begin
            writeln('Entrez une phrase: ');
            readln(phrase);
            NB_Mots(phrase);
        end;
end.