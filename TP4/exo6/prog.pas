program exo6;
var mot: string;

procedure Palindrome(mot: string);
    var i: integer;
        mot_inv: string;
    begin
        mot_inv := '';
        for i := length(mot) downto 1 do
            begin
                mot_inv := mot_inv + mot[i];
            end;
        if mot = mot_inv then
            writeln(mot, ' est un mot palindrome')
        else
            writeln(mot, ' n''est pas un mot palindrome');
    end;

begin
    while true do
        begin
            writeln('SVP! Entrez un mot: ');
            readln(mot);
            Palindrome(mot);
        end;
end.