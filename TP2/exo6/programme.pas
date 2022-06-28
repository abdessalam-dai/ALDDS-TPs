PROGRAM Articles;
VAR n_artcls: integer;
	prx_uni, prx_hors_taxe, prx_tot, redu_10, tva: real;

BEGIN

	writeln('Entrer le nombre d''articles: ');
	readln(n_artcls);
	writeln('Entrer le prix unitaire de l''article: ');
	readln(prx_uni);

	prx_tot:=n_artcls*prx_uni;
	redu_10:=prx_tot*0.1;
	tva:=prx_tot*0.17;

	if prx_tot >= 100000 then 
		BEGIN
			prx_tot:=prx_tot-redu_10;
			prx_hors_taxe:=prx_tot;
			prx_tot:=prx_tot+tva;
		END
	else
		BEGIN
			prx_hors_taxe:=prx_tot;
			if (prx_tot > 50000) then
				prx_tot:=prx_tot-redu_10;
		END;

	writeln('Le prix unitaire de l''article: ', prx_uni);
	writeln('Le montant hors taxe: ', prx_hors_taxe, ' DA');
	writeln('Le montant toute taxe comprise reduction reduite: ', prx_tot, 'DA');

END.
