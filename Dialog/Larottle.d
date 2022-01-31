BEGIN Larottle

IF ~Global("NoticedKarsomir", "GLOBAL", 1)~ THEN BEGIN 0
	SAY ~Święty Mściciel... Latami poszukiwałem tego ostrza, aż w końcu samo do mnie przyszło. Nareszcie moja zemsta będzie kompletna.~
	IF ~~ THEN EXIT
END

IF ~Global("LarotDefeated", "GLOBAL", 1)~ THEN BEGIN 1
	SAY ~Dość... Nie zamierzam ginąć za tę zbieraninę słabeuszy. Są ważniejsze rzeczy wymagające mojej uwagi.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~To śmieszne. Mamy aż nadto stworzeń i najemników, które na skinienie miecza zdziesiątkowałyby armię zakapturzonych czarodziei lub inne zorganizowane grupy, gdyby tylko zaszła taka potrzeba.~
	IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~Sama sugestia, że potrzebujemy waszego wsparcia jest wystarczającą obrazą... Nie rozumiem, dlaczego w ogóle podejmujemy z nimi negocjacje.~
	IF ~~ EXTERN ~Marble~ 1
END

IF ~~ THEN BEGIN 4
	SAY ~Dość! Jak długo zamierzamy stać tutaj, wysłuchując gróźb od nic nie znaczących awanturników?~
	IF ~~ THEN EXTERN ~Marble~ 5
END

IF ~~ THEN BEGIN 5
	SAY ~Wprost przeciwnie, los uśmiechnał się do nas. Mamy niepowtarzalną okazję usunąć kogoś, kto niewątpliwie bez wahania wszedłby nam w drogę w przyszłości.~
	IF ~~ THEN EXTERN ~Marble~ 6
END