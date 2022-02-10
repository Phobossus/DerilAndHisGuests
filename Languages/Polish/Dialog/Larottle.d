BEGIN Larottle

IF ~Global("NoticedKarsomir", "GLOBAL", 1) !Dead(Player1)~ THEN BEGIN 0
	SAY ~Święty Mściciel... Latami poszukiwałem tego ostrza, aż w końcu samo do mnie przyszło. Nareszcie moja zemsta będzie kompletna.~
	IF ~~ THEN DO ~SetGlobal("NoticedKarsomir", "GLOBAL", 2)~ EXIT
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

IF ~~ THEN BEGIN 6
	SAY ~To nie wchodzi w grę. Wciąż potrzebujemy tożsamości Marble, przynajmniej do czasu uzyskania pierwszych pozwoleń.~
	IF ~~ THEN EXTERN ~Marble~ 7
END

IF ~Global("StealKarsomir", "GLOBAL", 3)~ THEN BEGIN 7
	SAY ~Nie dość, że dostarczyłeś mi obiekt moich niekończących się poszukiwań, to jeszcze pozbyłeś się tej żałosnej zbieraniny. Winien ci jestem najszczersze podziękowania.~
	IF ~~ THEN REPLY ~Jesteś częścią tej zbieraniny i zaraz do niej dołączysz.~ GOTO 8
	IF ~~ THEN REPLY ~Oddaj miecz, i tak nie będziesz miał z niego żadnego użytku.~ GOTO 9
END

IF ~~ THEN BEGIN 8
	SAY ~Być może tak to dla ciebie wygląda. Filar był tylko narzędziem, ale ty w jeden dzień przysłużyłeś mi się bardziej, niż cała ta grupa. Jaka szkoda, że ostatecznie i tak będę musiał pociąć cię na kawałki.~
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END

IF ~~ THEN BEGIN 9
	SAY ~Nie masz pojęcia jak bardzo się mylisz. Miecz można poddać profanacji i odwrócić jego działanie, a ja znam kogoś, kto chętnie mi w tym pomoże.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
	SAY ~Jakże zabawny będzie widok ich twarzy, gdy zobaczą jak ostrze, które niegdyś zapewniło im zwycięstwo, tym razem jest przyczyną ich zguby. Nie zapomnę roli, jaką odegrałeś w tym wszystkim, może nawet zapewnię ci godny pochówek.~
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END