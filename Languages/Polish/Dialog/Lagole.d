BEGIN Lagole

IF ~~ THEN BEGIN 0
	SAY ~Pieczęć, którą przygotowałeś jest bezużyteczna, skoro mogą ją przekroczyć byle głupcy. Być może zaufanie twoim umiejętnościom było błędem?~
	IF ~~ THEN EXTERN ~Deril~ 1
END

IF ~Global("DerilDefeated", "GLOBAL", 3) !Allegiance(Myself, ENEMY)~ THEN BEGIN 1
	SAY ~Okazał się słaby i daleki od gotowości. W innych okolicznościach pewnie bym wam podziękował.~
	IF ~~ THEN REPLY ~Wygląda na to, że Deril gustował w dość... specyficznym towarzystwie. Do czego mógłby wam się przydać ktoś taki jak on?~ GOTO 2
	IF ~~ THEN REPLY ~(Nic nie mów)~ GOTO 5
	IF ~~ THEN REPLY ~Żaden problem, a teraz pozwolisz, że się oddalę.~ GOTO 3
	IF ~~ THEN REPLY ~Podziękowania przyjęte, teraz kolej na was.~ GOTO 4 
END

IF ~~ THEN BEGIN 2
	SAY ~Wydawał się być czarodziejem o ponadprzeciętnym talencie magicznym, obracał się też w istotnych dla nas kręgach. Kiedy buduje się sieć wpływów, osoby o odpowiednio wysokim statusie społecznym są niezwykle w cenie.~
	IF ~~ THEN REPLY ~Dzięki mnie mogliście się przekonać, że nie sprostałby poważniejszym wyzwaniom.~ GOTO 5
	IF ~~ THEN REPLY ~Cóż, z pewnością znajdziecie kogoś na jego miejsce. Pójdę już.~ GOTO 3
	IF ~~ THEN REPLY ~Czuję, że z zostawienia was przy życiu nie wyniknie nic dobrego. Pora umierać.~ GOTO 4
END 

IF ~~ THEN BEGIN 3
	SAY ~Nie tak prędko. Zabijając Derila, jednocześnie obróciliście w proch poczynione dziś plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Nie pozwolę wam tak po prostu odejść.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 4 
	SAY ~Brak ci rozumu jeśli wierzysz, że możesz wyjść zwycięsko z tej konfrontacji. Zapłacicie życiem zarówno za opóźnienie naszych działań w Amn, jak i za wyjątkową głupotę.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END 

IF ~~ THEN BEGIN 5
	SAY ~Jednak zabijając Derila, jednocześnie obróciliście w proch poczynione dziś plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Za karę podzielicie jego los.~
	IF ~~ THEN REPLY ~Zabicie mnie nie przywróci Derila do żywych, a ja nie mam powodu, by z wami walczyć. Czy nie możemy rozstać się w pokoju?~ EXTERN ~Verissa~ 0
	IF ~CheckStatLT(Player1, 16, CHR)~ THEN REPLY ~Sądzę, że moja śmierć nie leży w waszym interesie.~ GOTO 6
	IF ~CheckStatGT(Player1, 15, CHR)~ THEN REPLY ~Sądzę, że moja śmierć nie leży w waszym interesie.~ GOTO 7
	IF ~~ THEN REPLY ~Śmiało, jedna walka więcej nie robi mi różnicy.~ GOTO 4
END

IF ~~ THEN BEGIN 6
	SAY ~Nie, nie wydaje mi się, by pozostawienie cię przy życiu miało jakąkolwiek wartość. Poniesiecie konsekwencje swoich lekkomyślnych działań i zapłacicie za nie najwyższą cenę.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~Doprawdy? Jak widać nie brak ci pewności siebie. Ale to może być całkiem zabawne, nawet jeśli okaże się zwyczajną grą na zwłokę.~ 
	IF ~~ THEN GOTO 8
END
	
IF ~~ THEN BEGIN 8
	SAY ~Jaką korzyść miałbym mieć w tym, by pozwolić ci na opuszczenie tej komnaty żywym?~
	IF ~~ THEN REPLY ~Posiadam moc, z którą nie mógł równać się ani Deril, ani wasz demonolog. Z pewnością znajdziecie dla niej zastosowanie.~ EXTERN ~Larottle~ 2
	IF ~~ THEN REPLY ~Opowiedzcie mi o waszych planach, a ja zastanowię się jak mogę w nich pomóc.~ EXTERN ~Marble~ 2
	IF ~~ THEN REPLY ~Spędziłem wiele czasu w Amn i Atkathli, by nawiązać wiele... przydatnych znajomości.~ EXTERN ~Marble~ 3
	IF ~PartyGoldGT(10000)~ THEN REPLY ~Choć nie należę do szlachty, mam spory majątek. Dziesięć tysięcy sztuk złota za wszystkie nieprzyjemności, których jestem przyczyną oraz obietnica, że więcej nie wejdę wam w drogę.~ EXTERN ~Marble~ 0
END

IF ~~ THEN BEGIN 9
	SAY ~Nie sądź, że zdołasz nas oszukać. Wiem o wszystkich istotach przekraczających próg tej posiadłości, w każdej chwili mogę też zapieczętować to miejsce od wewnątrz.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
	SAY ~Za tę marną próbę krętactwa, jak i za opóźnienie naszych działań, upewnię się, że nie zaznacie spokoju nawet w śmierci.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~Śmiem wątpić. Gdyby rzeczywiście tak było, dawno wiedziałbym o was. Nie, nawet straże nie zainteresują się waszym zniknięciem.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12
	SAY ~Nie rozśmieszaj mnie. Władze miasta zdobędą u nas dług wdzięczności, gdy pokażemy im wasze zwłoki. Filar nie może wymarzyć sobie lepszego debiutu.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 13
	SAY ~Znudziły mnie te dywagacje. Wygląda na to, że stwarzasz same problemy, niezależnie od tego, czy żyjesz czy nie. Nie mam na to czasu.~ 
	IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
	SAY ~Odejdź, droga wolna. Uznaj to za szansę, by zapomnieć co tu zobaczyłeś. Jeśli przyjdzie ci do głowy opowiedzieć komuś zbyt wiele, nie otrzymasz kolejnej. Znalezienie cię nie wymaga większego wysiłku.~
	IF ~~ THEN DO ~
	SetGlobal("PillarEscapesPeacefully", "GLOBAL", 1)
	// Unlock sejf?
	
	~ EXIT
END


