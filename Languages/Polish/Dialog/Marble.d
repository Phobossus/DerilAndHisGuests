BEGIN Marble

IF ~~ THEN BEGIN 0
	SAY ~Ach, o naiwności. Dźwięk złotych monet to melodia bliska memu sercu, lecz słaba to karta przetargowa. Cóż stoi na przeszkodzie, abym zwyczajnie zdarł je z waszych zwłok?~
	IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY ~Lagole, nic nam po nich, kończmy tę farsę. Jeśli Filar straci anonimowość, równie dobrze możemy wracać do Luskan.~
	IF ~~ THEN EXTERN ~Lagole~ 6
END

IF ~~ THEN BEGIN 2
	SAY ~Cóż, chyba nie brzmi to zbyt obiecująco.~
	IF ~~ THEN EXTERN ~Verissa~ 1
END

IF ~~ THEN BEGIN 3
	SAY ~Cóż, obawiam się jednak, że żadnej z twoich *znajomości* dzisiaj z nami nie ma. Wiemy więc już, że nie przydają się tobie... w czym miałyby przydać się nam?~
	IF ~~ THEN REPLY ~Chyba nie rozumiesz. Jeśli zginę, znalezienie zastępstwa dla Derila będzie najmniejszym z waszych problemów.~ GOTO 4
	IF ~~ THEN REPLY ~Zaatakujcie mnie, a przekonacie się, że nie przyszedłem tu sam.~ EXTERN ~Lagole~ 9
END

IF ~~ THEN BEGIN 4
	SAY ~Co takiego?~
	IF ~Global("WorkingForBodhi","GLOBAL",1) !Global("Chapter","GLOBAL",6)~ THEN REPLY ~To, co słyszysz. Moi wspólnicy ze świata mroku nie będą siedzieć bezczynnie w obliczu wieści o mojej śmierci. Wiedzą, że tu jestem, wiedzą też o tobie, Lagole. Chyba nie chcecie mieć na głowie jeszcze wojny z gildią?~ EXTERN ~Larottle~ 4
	IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~To, co słyszysz. Złodzieje Cienia nie będą siedzieć bezczynnie w obliczu wieści o mojej śmierci. Wiedzą, że tu jestem, wiedzą też o tobie, Lagole. Chyba nie chcecie mieć na głowie jeszcze wojny z gildią?~ EXTERN ~Larottle~ 4
	IF ~ReputationGT(Player1, 15)~ THEN REPLY ~To, co słyszysz. Mam w Amn wielu sojuszników, którzy wiele mi zawdzięczają. Nie przyjmą dobrze wieści o mojej śmierci. Wiedzą, że tu jestem, wiedzą też o tobie, Lagole. Jeśli coś mi się stanie, możecie zapomnieć o anonimowości.~ EXTERN ~Larottle~ 4
	IF ~ReputationGT(Player1, 7) ReputationLT(Player1, 16)~ THEN REPLY ~To, co słyszysz. Mam w Amn wielu sojuszników, którzy wiele mi zawdzięczają. Nie przyjmą dobrze wieści o mojej śmierci. Wiedzą, że tu jestem, wiedzą też o tobie, Lagole. Jeśli coś mi się stanie, możecie zapomnieć o anonimowości.~ EXTERN ~Lagole~ 11
	IF ~ReputationLT(Player1, 8)~ THEN REPLY ~To, co słyszysz. Mam w Amn wielu sojuszników, którzy wiele mi zawdzięczają. Nie przyjmą dobrze wieści o mojej śmierci. Wiedzą, że tu jestem, wiedzą też o tobie, Lagole. Jeśli coś mi się stanie, możecie zapomnieć o anonimowości.~ EXTERN ~Lagole~ 12
END

IF ~~ THEN BEGIN 5
	SAY ~A więc przeczucie mnie nie myliło. Nie ulega wątpliwości, ten <RACE> to <CHARNAME>.~
	IF ~~ THEN EXTERN ~Verissa~ 2
END

IF ~~ THEN BEGIN 6
	SAY ~Tak, tak, ale nie możemy tak po prostu zignorować potencjalnych reperkusji. Twoja krótkowzroczność cofnie nasz progres o wiele miesięcy, Larottle.~
	IF ~~ THEN EXTERN ~Verissa~ 3
END

IF ~~ THEN BEGIN 7
	SAY ~W istocie, wolałbym uniknąć przedwczesnego porzucania tej formy... w innym przypadku byłoby to optymalne rozwiązanie.~
	IF ~~ THEN EXTERN ~Verissa~ 4
END

