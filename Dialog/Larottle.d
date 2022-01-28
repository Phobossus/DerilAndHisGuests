BEGIN Larottle

IF ~Global("NoticedKarsomir", "GLOBAL", 1)~ THEN BEGIN 0
	SAY ~Święty Mściciel... Latami poszukiwałem tego ostrza, aż w końcu samo do mnie przyszło. Nareszcie moja zemsta się ziści.~
	IF ~~ THEN EXIT
END

IF ~Global("LarotDefeated", "GLOBAL", 1)~ THEN BEGIN 1
	SAY ~Dość... Nie zamierzam ginąć za tę zbieraninę słabeuszy. Mam zbyt wiele niedokończonych spraw.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~To śmieszne. Mamy aż nadto najemników i stworzeń, które na skinienie miecza zdziesiątkowałyby armię zakapturzonych czarodziei lub inne zorganizowane grupy, gdyby tylko zaszła taka potrzeba.~
	IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~Sama sugestia, że potrzebujemy waszego wsparcia jest wystarczającą obrazą... Nie rozumiem, dlaczego w ogóle podejmujemy z nimi negocjacje.~
	IF ~~ EXTERN ~Marble~ 1
END

IF ~~ THEN BEGIN 4
	SAY ~Ja tam im nie wierzę. Tacy awanturnicy są zbyt nieprzewidywalni, a ich motywacje są niczym w porównaniu do typowej, żądnej potęgi amnijskiej szlachty. To tam powinniśmy szukać zastępstwa, zabijmy ich i nie traćmy więcej czasu.~
	IF ~~ EXTERN ~Verissa~ 2
END