PROGRAM EXO1;
VAR N, n_admet, i, note: integer;

BEGIN
    write('Combien de notes? ');
    read(N);
    if N <= 0 then
        writeln('Erreur! Le nombre de notes doit etre strictement positif!')
    else
        begin
            n_admet:=0;
            i:=1;
            while i <= N do
                begin
                    writeln('Entrez la ', i, ' eme note: ');
                    read(note);
                    if (note >= 0) and (note <= 20) then
                        begin
                            if note >= 10 then
                                n_admet:=n_admet+1;
                            i:=i+1;
                        end
                    else
                        writeln('SVP entrez une note valid comprise entre 0 et 20!');
                end;
            writeln('Le nombre de notes superieur a 10 est ', n_admet);
        end;
    
END.
    // for i:= 1 to N do
    //     begin
    //         writeln('Entrez la ', i, ' eme note: ');
    //         read(note);
    //         if (note >= 0) and (note <= 20) then
    //             begin
    //                 if note > 10 then
    //                     n_admet:=n_admet+1;
    //             end
    //         else
    //             writeln('SVP entrez une note valid comprise entre 0 et 20!');
    //     end;