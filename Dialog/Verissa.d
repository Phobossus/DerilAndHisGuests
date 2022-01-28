BEGIN Verissa

IF ~~ THEN BEGIN 0
	SAY ~Bez względu na okoliczności, zobaczyliście dziś zbyt wiele. Niechaj pieśń udręki ułoży was do wiecznego snu.~
	IF ~~ THEN DO~
	Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~Nie znamy twoich atutów, zaś skoro sam nie jesteś skory ich przedstawić, prawdopodobnie nie są godne uwagi. Wprowadzanie cię w szczegóły byłoby zwykłą stratą czasu.~
	IF ~~ THEN EXTERN ~Lagole~ 6
END

IF ~~ THEN BEGIN 2
	SAY ~To oczywiście tylko słowa, ale być może decyzja o eliminacji tej grupy jest... przedwczesna. Myślę, że wszystkim nam zależy na uniknięciu opóźnień, jeśli istnieje taka możliwość.~
	IF ~~ THEN EXTERN ~Lagole~ 8
END