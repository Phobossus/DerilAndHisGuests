BEGIN MMDERIL

IF ~NumTimesTalkedTo(0) Global("DerilAmbush", "GLOBAL", 0)~ THEN BEGIN 0
	SAY ~To wy? Planowałem się wami zająć, gdy już będzie po wszystkim, ale oszczędziliście mi zachodu. Moi goście z pewnością docenią to przedstawienie.~
	IF ~~ THEN DO ~SetGlobal("DerilFled", "GLOBAL", 2)~
	EXTERN ~MMLAGOLE~ 0
END

IF ~~ THEN BEGIN 1
	SAY ~Zaklęcie nie miało żadnej luki, ktoś musiał je uszkodzić. Thavin? Mniejsza o to... Przywrócę je i zakończę tę sprawę raz na zawsze.~
	IF ~~ THEN DO ~SetGlobal("SealExitMMAR01", "GLOBAL", 1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
	SAY ~Zobaczcie na własne oczy jak kończą ci, którzy wtykają nos tam, gdzie nie trzeba! Udowodnię swój potencjał!~
	IF ~IsValidForPartyDialogue("CERND")~ THEN DO ~Enemy()~ EXTERN ~CERNDJ~ ReactDeril01
	IF ~IsValidForPartyDialogue("KELDORN")~ THEN DO ~Enemy()~ EXTERN ~KELDORJ~ ReactDeril01
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END

IF ~NumTimesTalkedTo(0) Global("DerilAmbush", "GLOBAL", 1)~ THEN BEGIN 3
	SAY ~Ach, nareszcie doszliście do siebie. Mówiłem, że po was przyjdę! I zemszczę się za waszą pogardę!~
	IF ~IsValidForPartyDialogue("CERND")~ THEN EXTERN ~CERNDJ~ DerilAmbush01
	IF ~!IsValidForPartyDialogue("CERND")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
	SAY ~Wyeliminowanie kilku śpiących, bezbronnych ofiar byłoby tchórzostwem. Nie, będziecie w pełni świadomi momentu swojej śmierci, jak i tego, kto za nią odpowiada!~
	IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
	SAY ~Chodźcie, towarzysze, nie krępujcie się! Obiecałem, że będzie to warte waszego czasu i mam zamiar dotrzymać słowa!~
	IF ~~ THEN DO ~
		Enemy()
		SetGlobal("PillarMembersArrive", "GLOBAL", 1)
	~ EXIT
END