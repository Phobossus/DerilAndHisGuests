BEGIN Verissa

IF ~~ THEN BEGIN 0
	SAY ~Bez względu na okoliczności, zobaczyliście dziś zbyt wiele. Niechaj pieśń udręki ułoży was do wiecznego snu.~
	IF ~~ THEN DO~
	Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~Niewiele o tobie wiemy, nie znamy też twoich atutów, zaś skoro sam nie jesteś skory ich przedstawić, prawdopodobnie nie są godne uwagi. Już raz udało ci się zmarnować nasz czas, głupotą byłoby pozwolić ci uczynić to po raz kolejny.~
	IF ~~ THEN EXTERN ~Lagole~ 6
END

IF ~~ THEN BEGIN 2
	SAY ~<CHARNAME> tutaj? To odrobinę... komplikuje sprawę.~
	IF ~~ THEN EXTERN ~Larottle~ 5
END

IF ~~ THEN BEGIN 3
	SAY ~Jest też inna opcja. Wykorzystaj swoje umiejętności Maurezhi i przejmij go. Nikt nie nabierze podejrzeń, a osoba o reputacji <CHARNAME> doskonale sprawdzi się w-~
	IF ~~ THEN EXTERN ~Lagole~ 13
END