BEGIN Lagole

IF ~~ THEN BEGIN 0
	SAY ~Pieczęć, którą przygotowałeś jest bezużyteczna, skoro mogą ją przekroczyć byle głupcy. Być może zaufanie twoim umiejętnościom było błędem?~
	IF ~~ THEN EXTERN ~Deril~ 1
END

IF ~Global("DerilDefeated", "GLOBAL", 1)~ THEN BEGIN 2
	SAY ~Okazał się słaby i daleki od gotowości. W innych okolicznościach pewnie bym wam podziękował.~
	IF ~~ THEN REPLY ~Wygląda na to, że Deril gustował w dość... specyficznym towarzystwie. Do czego mógłby wam się przydać ktoś taki jak on?~ GOTO 3
	IF ~~ THEN REPLY ~Żaden problem, a teraz pozwolisz, że się oddalę.~ GOTO 4
	IF ~~ THEN REPLY ~Podziękowania przyjęte, teraz kolej na was.~ GOTO 5 
END

IF ~~ THEN BEGIN 3
	SAY ~Wydawał się być czarodziejem o ponadprzeciętnym talencie magicznym, obracał się też w istotnych dla nas kręgach. Kiedy buduje się sieć wpływów, osoby z wewnątrz, o odpowiednio wysokim statusie społecznym, są niezwykle w cenie.~
	IF ~~ THEN REPLY ~Cóż, z pewnością znajdziecie kogoś na jego miejsce. Pójdę już.~ GOTO 4
	IF ~~ THEN REPLY ~Sądzę, że z zostawienia was przy życiu nie wyniknie nic dobrego. Gińcie.~ GOTO 5
END 

IF ~~ THEN BEGIN 4
	SAY ~Nie tak prędko. Zabijając Derila na tym etapie, jednocześnie obróciliście w proch plany, których był częścią. Nad słabościami da się popracować, ale teraz muszę zacząć wszystko od nowa. Nie pozwolę wam tak po prostu odejść.~
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
