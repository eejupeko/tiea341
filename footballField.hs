-- |footballFieldTester laskee onko jalkapallokentän mitat sääntöjen mukaiset
-- palauttaa True, jos on ja False, jos ei.
footballFieldTester :: Double -> Double -> Bool
footballFieldTester width height
	| width <= 75 && width >= 64 && height >= 100 && height <= 110 = True
	| otherwise = False
	
-- Tämän olisi voinut tehdä myös if lauseella, mutta mielestäni
-- tämä on parempi vaihtoehto. Case lauseella olisi ollut hankalaa,
-- koska muuttujat voivat saada teoriassa äärettömän määrän eri arvoja
-- sallituissa rajoissa.