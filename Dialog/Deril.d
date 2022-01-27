BEGIN Deril

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
	SAY ~To wy? Planowałem się wami zająć, gdy już będzie po wszystkim, ale oszczędziliście mi zachodu. Moi goście z pewnością docenią to przedstawienie.~
	IF ~~ THEN DO ~SetGlobal("DerilFled", "GLOBAL", 2)~
	EXTERN ~Lagole~ 0
END

IF ~~ THEN BEGIN 1
	SAY ~Zaklęcie nie miało żadnej luki, ktoś musiał je uszkodzić. Thavin? Mniejsza o to... Sprawdzę to, gdy tylko zamknę tę sprawę.~
	IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
	SAY ~Zobaczcie na własne oczy jak kończą ci, którzy wtykają nos tam, gdzie nie trzeba! Udowodnię swój potencjał!~
	IF ~~ THEN DO ~Enemy()~ EXIT
END

/*IF ~Global("LagoleLeft", "GLOBAL", 2)~ THEN BEGIN 3
	SAY ~Kosztowaliście mnie wieczność i postaram się odpłacić się wam z nawiązką!~
	//IF ~InParty("CERND")~ THEN DO ~Enemy()~ EXTERN ~CERNDJ~ ReactToLich
	//IF ~InParty("KELDORN")~ THEN DO ~Enemy()~ EXTERN ~KELDORJ~ ReactToLich
	IF ~~ THEN DO ~Enemy()~ EXIT
END
*/

