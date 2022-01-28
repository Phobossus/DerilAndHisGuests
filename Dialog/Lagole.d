BEGIN Lagole

IF ~~ THEN BEGIN 0
	SAY ~Pieczęć, którą przygotowałeś jest bezużyteczna, skoro mogą ją przekroczyć byle głupcy. Być może zaufanie twoim umiejętnościom było błędem?~
	IF ~~ THEN EXTERN ~Deril~ 1
END

IF ~Global("DerilDefeated", "GLOBAL", 1)~ THEN BEGIN 1
	SAY ~Okazał się słaby i daleki od gotowości. W innych okolicznościach pewnie bym wam podziękował.~
	IF ~~ THEN REPLY ~Wygląda na to, że Deril gustował w dość... specyficznym towarzystwie. Do czego mógłby wam się przydać ktoś taki jak on?~ GOTO 2
	IF ~~ THEN REPLY ~(Nic nie mów)~ GOTO 5
	IF ~~ THEN REPLY ~Żaden problem, a teraz pozwolisz, że się oddalę.~ GOTO 3
	IF ~~ THEN REPLY ~Podziękowania przyjęte, teraz kolej na was.~ GOTO 4 
END

IF ~~ THEN BEGIN 2
	SAY ~Wydawał się być czarodziejem o ponadprzeciętnym talencie magicznym, obracał się też w istotnych dla nas kręgach. Kiedy buduje się sieć wpływów, osoby z wewnątrz, o odpowiednio wysokim statusie społecznym, są niezwykle w cenie.~
	IF ~~ THEN REPLY ~Dzięki mnie mogliście się przekonać, że nie sprostałby poważniejszym wyzwaniom.~ GOTO 5
	IF ~~ THEN REPLY ~Cóż, z pewnością znajdziecie kogoś na jego miejsce. Pójdę już.~ GOTO 3
	IF ~~ THEN REPLY ~Czuję, że z zostawienia was przy życiu nie wyniknie nic dobrego. Pora umierać.~ GOTO 4
END 

IF ~~ THEN BEGIN 3
	SAY ~Nie tak prędko. Śmierć Derila na tym etapie niweczy wysiłek ostatnich dni, a także obraca w proch plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Nie pozwolę wam tak po prostu odejść.~
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
	SAY ~Jednak jego śmierć na tym etapie niweczy wysiłek ostatnich dni, a także obraca w proch plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Za karę podzielisz jego los.~
	IF ~~ THEN REPLY ~Zabicie mnie nie przywróci Derila do żywych, a ja nie mam powodu, by z wami walczyć. Czy nie możemy rozstać się w pokoju?~ EXTERN ~Verissa~ 0
	IF ~CheckStatLT(Player1, 16, CHR)~ THEN REPLY ~Czy nie możemy się jakoś dogadać? Mogę okazać się dla was przydatny.~ GOTO 6
	IF ~CheckStatGT(Player1, 15, CHR)~ THEN REPLY ~Czy nie możemy się jakoś dogadać? Mogę okazać się dla was przydatny.~ GOTO 7
	IF ~~ THEN REPLY ~Śmiało, jedna walka więcej nie robi mi różnicy.~ GOTO 4
END

IF ~~ THEN BEGIN 6
	SAY ~Nie, nie wydaje mi się, by pozostawienie cię przy życiu miało jakąkolwiek wartość. Wasze ciała zostaną dokładnie przeszukane, a wspomnienia nie umkną oczom Maurezhi. Reszta jest bez znaczenia.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~Doprawdy? Jak widać nie brak ci pewności siebie. Co pozwala ci przypuszczać, że mielibyśmy z was jakikolwiek pożytek?~
	IF ~~ THEN REPLY ~Posiadam moc, z którą nie mógł równać się ani Deril, ani wasz demonolog. Z pewnością znajdziecie dla niej zastosowanie.~ EXTERN ~Larottle~ 2
	IF ~~ THEN REPLY ~Opowiedzcie mi o waszych planach, a ja zastanowię się jak mogę w nich pomóc.~ EXTERN ~Marble~ 2
	IF ~~ THEN REPLY ~Spędziłem wiele czasu w Amn i Atkathli, znam je jak własną kieszeń. Mam znajomości, wpływy. Cokolwiek miał zrobić Deril, ja zrobię to lepiej.~ EXTERN ~Marble~ 3
	IF ~PartyGoldGT(10000)~ THEN REPLY ~Choć nie należę do szlachty, mam spory majątek. Dziesięć tysięcy sztuk złota za wszystkie nieprzyjemności, których jestem przyczyną oraz obietnica, że więcej nie wejdę wam w drogę.~ EXTERN ~Marble~ 0
END

IF ~~ THEN BEGIN 8
	SAY ~Nie sądź, że zdołasz nas oszukać. Mamy wystarczające środki, by poddać twoje twierdzenia weryfikacji. Jeśli mijasz się z prawdą, osobiście zadbam o to, byś nie zaznał spokojnej śmierci.~
	IF ~~ THEN EXIT
END
