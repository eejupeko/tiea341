pisteTulo = 
	let
		a = [5,4,2]
		b = [8,2,4]
		tulo x = a!!x * b!!x
	in tulo 0 + tulo 1 + tulo 2
	
pisteTulo2 = a!!0 * b!!0 + a!!1 * b!!1 + a!!2 + b!!2
	where
		a = [5,4,2]
		b = [8,2,4]
		
		
-- Molemmissa on helposti ymmärrettävä syntaksi. Määritelmä on
-- mukavasti paloiteltu osiin ja siten voi olla helppolukuisempi.
-- En heti keksi tilannetta, jossa toinen olisi toista hyödyllisempi.

porrasfunktioIfThenElse x = if x < 0
	then 0
	else if x < 1
		then 1
		else if x < 2
			then 2
				else 3
				
-- Ei näytä kovin helppolukuiselta ja varsinkin sisäkkäiset if lauseet pistää
-- miettimään, voisiko olla parempikin tapa kirjoittaa sama asia.

porrasfunktio x
	| x < 0 = 0
	| x >= 0 && x < 1 = 1
	| x >= 1 && x < 2 = 2
	| otherwise = 3
	
-- Paljon selvempi lukea, kuin edellinen. Erilainen syntaksi, kuin
-- muissa kielissä, joita olen nähnyt, mutta silti minusta todella
-- helposti ymmärrettävä.


porrasfunktioCase x = case max (-1) (floor x) of
	(-1) -> 0
	0 -> 1
	1 -> 2
	2 -> 3
	_ -> 3
	
-- Tämän funktion tekeminen case lauseella ei ole paras vaihtoehto.
-- Casen käyttö voi olla järkevää, jos muuttujalla on vain pieni joukko mahdollisia
-- arvoja. Mielestäni kuitenkin guarded statements on helpoin tyyli.


1+2 == (+) 1 2
3*4 == (*) 3 4

-- Vaikutti aluksi oudolta syntaksilta, mutta nyt ei tarvitse olla erillistä funktiota,
-- jos haluaa viedä parametrina toiselle funktiolla funktion, joka laskee kaksi lukua
-- yhteen tai kertoo ne keskenäään. 
