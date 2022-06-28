PROGRAM EXO3;
VAR x, max, min: real;
    march: boolean;

BEGIN
    writeln('Entrez la borne min. et la borne max. :');
    read(min, max);

    // Permutation de min et max si (min > max)
    if min > max then
        begin
            min:=max+min;
            max:=min-max;
            min:=min-max;
        end;

    // Avec la boucle Repeat Until
    repeat
        write('Entrez un nombre reel: ');
        readln(x);
        if not(min <= x) OR not(x <= max) then
            writeln('Erreur! ');
    until (min <= x) AND (x <= max);

    // Avec la boucle While
    {march:=true;
    while march do
        begin
            write('Entrez un nombre reel: ');
            readln(x);
            if (min <= x) AND (x <= max) then
                begin
                    writeln('Correct');
                    march:=false;
                end
            else
                writeln('Erreur! ');
        end;}
END.