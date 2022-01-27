BEGIN Larottle

IF ~Global("NoticedKarsomir", "GLOBAL", 1)~ THEN BEGIN 0
	SAY ~Święty Mściciel... Latami poszukiwałem tego ostrza, aż w końcu samo do mnie przyszło. Nareszcie moja zemsta będzie kompletna.~
	IF ~~ THEN EXIT
END

IF ~Global("LarotDefeated", "GLOBAL", 1)~ THEN BEGIN 1
	SAY ~Dość... Nie zamierzam ginąć za tę zbieraninę słabeuszy. Larottle ma ważniejsze sprawy na głowie.~
	IF ~~ THEN EXIT
END