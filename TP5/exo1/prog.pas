program exo1;
const Max = 12;
type Tab =array[1..Max] of integer;
var V, V1, V2 : Tab;

procedure LireEtAfficher(var V: Tab);
    var i: integer;
    begin
        V[1] := 4;
        V[2] := 1;
        V[3] := 6;
        V[4] := 3;
        V[5] := 8;
        V[6] := 1;
        V[7] := 6;
        V[8] := 2;
        V[9] := 8;
        V[10] := 1;
        V[11] := 5;
        V[12] := 7;
        writeln('- Les elements de tabluau V:');
        for i := 1 to Max do
            begin
                write(V[i] , ' ')
            end;writeln;
    end;

function Somme(V: Tab): integer;
    var i: integer;
    begin
        Somme := 0;
        for i := 1 to Max do
            begin
                Somme := Somme + V[i];
            end;
    end;

function Moyenne(V: Tab): real;
    var som: integer;
    begin
        som := Somme(V);
        Moyenne := som / Max;
    end;

procedure Maximum(V: Tab);
    var i, m, pos: integer;
    begin
        m := V[1];
        pos := 1;
        for i := 2 to Max do
            begin
                if V[i] > m then
                    begin
                        pos := i;
                        m := V[i];
                    end;
            end;
        writeln('Le max : ', m, ' sa position : ', pos);
    end;

procedure Minimum(V: Tab);
    var i, m, pos: integer;
    begin
        m := V[1];
        pos := 1;
        for i := 2 to Max do
            begin
                if V[i] < m then
                    begin
                        pos := i;
                        m := V[i];
                    end;
            end;
        writeln('Le min : ', m, ' sa position : ', pos);
    end;

procedure ExisteIl(V: Tab);
    var n, i, post: integer;
        trouv: boolean;
    begin
        write('Entrez une valeur a rechercher: ');
        readln(n);
        trouv := false;
        for i := 1 to Max do
            begin
                if V[i] = n then
                    begin
                        trouv := true;
                        post := i;
                    end;
            end;
        if trouv then
            begin
                writeln('La valeur ', n, ' existe dans V, sa position: ', post);
            end
        else
            writeln('La valeur ', n, ' n''existe pas dans V')
    end;

procedure NombreOccurence(V: Tab);
    var i, j, occ: integer;
    begin
        for i := 1 to Max do
            begin
                occ := 0;
                for j := 1 to Max do
                    begin
                        if V[i] = V[j] then
                            occ := occ + 1;
                    end;
                writeln('Nombre doccurence de ', V[i], ' : ' , occ);
            end;
    end;

procedure Croissante(V: Tab; Var V1: Tab);
    var i, j, temp: integer;
    begin
        V1 := V;
        for i := 1 to Max do
            begin
                for j := 1 to Max do
                    begin
                        if V1[i] < V1[j] then
                            begin
                                temp := V1[i];
                                V1[i] := V1[j];
                                V1[j] := temp;
                            end;
                    end;
            end;
        writeln('Odore croissant:');
        for i := 1 to Max do
            writeln(V1[i]);
    end;

procedure Inverser(V: Tab; var V2: Tab);
    var i: integer;
    begin
        for i := 0 to Max+1 do
            begin
                V2[i+1] := V[Max-i];
            end;
        writeln('Inverser les elements de V: ');
        for i := 1 to Max do
            writeln(V2[i]);
    end;
begin
    writeln;
    writeln('1. Lire et afficher: ');
    LireEtAfficher(V);writeln;
    writeln('2. La somme des elements:');
    writeln(Somme(V));writeln;
    writeln('La moyenne des elements:');
    writeln(Moyenne(V));writeln;
    Maximum(V);writeln;
    Minimum(V);writeln;
    ExisteIl(V);
    NombreOccurence(V);
    Croissante(V, V1);
    Inverser(V, V2);

end.