PROGRAM OrdereAlphabetique;
VAR A, B, C, x, y, z: string;

BEGIN

	writeln('Entrer le 1er mot: ');
	readln(A);
	writeln('Entrer le 2eme mot: ');
	readln(B);
	writeln('Entrer le 3eme mot: ');
	readln(C);

    if (A <= B) and (B <= C) then
        begin
            x:=A;
            y:=B;
            z:=C;
        end;
    if (A <= C) and (C <= B) then
        begin
            x:=A;
            y:=C;
            z:=B;
        end;
    if (B <= A) and (A <= C) then
        begin
            x:=B;
            y:=A;
            z:=C;
        end;
    if (B <= C) and (C <= A) then
        begin
            x:=B;
            y:=C;
            z:=A;
        end;
    if (C <= A) and (A <= B) then
        begin
            x:=C;
            y:=A;
            z:=B;
        end;
    if (C <= B) and (B <= A) then
        begin
            x:=C;
            y:=B;
            z:=A;
        end;

    // if (A < B) then
    //     begin
    //         if (A < C) then
    //             begin
    //                 x := A;
    //                 if (B < C) then
    //                     begin
    //                         Y := B;
    //                         Z := C;
    //                     end
    //                 else
    //                     begin    
    //                         Y := C;
    //                         Z := B;
    //                     end;
    //             end
    //         else
    //             begin
    //                 X := C;
    //                 Y := A;
    //                 Z := B;
    //             end;
    //     end
    // else
    //     begin
    //         if (B < C) then
    //             begin
    //                 x := B;
    //                 if (A < C) then
    //                     begin
    //                         Y := A;
    //                         Z := C;
    //                     end
    //                 else
    //                     begin
    //                         Y := C;
    //                         Z := A;
    //                     end;
    //             end
    //         else
    //             begin
    //                 X := C;
    //                 Y := B;
    //                 Z := A;
    //             end;
    //     end;

    writeln('Ordere Alphabetique:');
    writeln(X);
    writeln(Y);
    writeln(Z);

END.
