BEGIN Lagole

IF ~~ THEN BEGIN 0
	SAY ~Pieczęć, którą przygotowałeś jest bezużyteczna, skoro mogą ją przekroczyć byle głupcy. Być może zaufanie twoim umiejętnościom było błędem?~
	IF ~~ THEN EXTERN ~Deril~ 1
END

IF ~Global("DerilDefeated", "GLOBAL", 1)~ THEN BEGIN 2
	SAY ~Okazał się słaby i daleki od gotowości. W innych okolicznościach pewnie bym wam podziękował.~
	IF ~~ THEN REPLY ~Wygląda na to, że Deril gustował w dość... specyficznym towarzystwie. Do czego mógłby wam się przydać ktoś taki jak on?~ GOTO 3
	IF ~~ THEN REPLY ~(Nic nie mów)~ GOTO 6
	IF ~~ THEN REPLY ~Żaden problem, a teraz pozwolisz, że się oddalę.~ GOTO 4
	IF ~~ THEN REPLY ~Podziękowania przyjęte, teraz kolej na was.~ GOTO 5 
END

IF ~~ THEN BEGIN 3
	SAY ~Wydawał się być czarodziejem o ponadprzeciętnym talencie magicznym, obracał się też w istotnych dla nas kręgach. Kiedy buduje się sieć wpływów, osoby z wewnątrz, o odpowiednio wysokim statusie społecznym, są niezwykle w cenie.~
	IF ~~ THEN REPLY ~Dzięki mnie mogliście się przekonać, że nie sprostałby poważniejszym wyzwaniom.~ GOTO 6
	IF ~~ THEN REPLY ~Cóż, z pewnością znajdziecie kogoś na jego miejsce. Pójdę już.~ GOTO 4
	IF ~~ THEN REPLY ~Czuję, że z zostawienia was przy życiu nie wyniknie nic dobrego. Pora umierać.~ GOTO 5
END 

IF ~~ THEN BEGIN 4
	SAY ~Nie tak prędko. Śmierć Derila na tym etapie niweczy wysiłek ostatnich dni, a także obraca w proch plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Nie pozwolę wam tak po prostu odejść.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 5 
	SAY ~Brak ci rozumu jeśli wierzysz, że możesz wyjść zwycięsko z tej konfrontacji. Zapłacicie życiem zarówno za opóźnienie naszych działań w Amn, jak i za wyjątkową głupotę.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END 

IF ~~ THEN BEGIN 6
	SAY ~Jednak jego śmierć na tym etapie niweczy wysiłek ostatnich dni, a także obraca w proch plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Za karę podzielisz jego los.~
	IF ~~ THEN REPLY ~Śmiało, jedna walka więcej nie robi mi różnicy.~ GOTO 5
	IF ~~ THEN REPLY ~Na waszym miejscu zastanowiłbym się nad pokojowym rozwiązaniem. Nikt więcej nie musi ginąć.~ EXTERN ~Verissa~ 0
	IF ~CheckStatLT(Player1, 16, CHR)~ THEN REPLY ~Czy nie możemy się jakoś dogadać? Mogę okazać się dla was przydatny.~ GOTO 7
	IF ~CheckStatGT(Player1, 15, CHR)~ THEN REPLY ~Czy nie możemy się jakoś dogadać? Mogę okazać się dla was przydatny.~ GOTO 8
END

IF ~~ THEN BEGIN 7
	SAY ~Nie, nie wydaje mi się, by pozostawienie cię przy życiu miało jakąkolwiek wartość. Wasze ciała zostaną dokładnie przeszukane, a wasze wspomnienia nie umkną oczom Maurezhi. Reszta nie ma znaczenia.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 8
	SAY ~Doprawdy? Jak widać nie brak ci pewności siebie. Co pozwala ci przypuszczać, że mielibyśmy z was jakikolwiek użytek?~
	IF ~~ THEN REPLY ~Posiadam moc, z którą nie mógł równać się ani Deril, ani wasz demonolog. Z pewnością znajdziecie dla niej zastosowanie.~ GOTO 9
	IF ~PartyGoldGT(15000)~ THEN REPLY ~Choć nie należę do szlachty, mam spory majątek. Piętnaście tysięcy sztuk złota za wszystkie nieprzyjemności, których jestem przyczyną oraz obietnica, że więcej nie wejdę wam w drogę.~ GOTO 0
	IF ~~ THEN REPLY ~Spędziłem wiele czasu w Amn i Atkathli, znam je jak własną kieszeń. Mam znajomości, wpływy. Cokolwiek miał zrobić Deril, ja zrobię to lepiej.~ GOTO 0
END

IF ~~ THEN BEGIN 9
	SAY ~No to spoko.~
END
