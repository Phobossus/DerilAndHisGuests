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
	SAY ~Hmm... jeśli w istocie jest tak, jak mówisz... ~
	IF ~~ THEN EXTERN ~Larottle~ 4
END