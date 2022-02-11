BEGIN MMTHAVIN

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~Podejrzewałem, że ten głupiec nie potrafi utrzymać języka za zębami, ale to i tak bez znaczenia. Jego los wkrótce się rozstrzygnie, a ja pozbędę się was zanim zdążycie narobić jakichkolwiek szkód.~
		++ ~Zawołaj Derila lub zejdź mi z drogi, kimkolwiek jesteś ta sprawa cię nie dotyczy.~ GOTO 1
		++ ~Świetnie, przyda mi się drobna rozgrzewka.~ GOTO 2
END

IF ~~ THEN BEGIN 1
SAY ~Nic mnie nie obchodzą wasze osobiste utarczki. Filar ma pożytek z jego wpływów w Atkathli i nie pozwolę, by Lagole ponownie nabrał wątpliwości.~ 
IF ~~ THEN DO ~
	CreateCreature("DEMSUC01", [553.462], 0)
	CreateVisualEffect("SPCLOUD3", [553.462])
	CreateCreature("DEMSUC01", [359.579], 13)
	CreateVisualEffect("SPCLOUD3", [359.579])
	CreateCreature("DEMSUC01", [404.616], 13)
	CreateVisualEffect("SPCLOUD3", [404.616])
	CreateCreature("DEMSUC01", [457.735], 10)
	CreateVisualEffect("SPCLOUD3", [457.735])
	PlaySound("EFF_M01")
	Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
SAY ~Obawiam się, że to wy posłużycie nam za rozgrzewkę. Chodźcie, moje najmilsze, pokażemy Derilowi jak skutecznie rozprawiać się z intruzami.~ 
IF ~~ THEN DO ~
	CreateCreature("DEMSUC01", [553.462], 0)
	CreateVisualEffect("SPCLOUD3", [553.462])
	CreateCreature("DEMSUC01", [359.579], 13)
	CreateVisualEffect("SPCLOUD3", [359.579])
	CreateCreature("DEMSUC01", [404.616], 13)
	CreateVisualEffect("SPCLOUD3", [404.616])
	CreateCreature("DEMSUC01", [457.735], 10)
	CreateVisualEffect("SPCLOUD3", [457.735])
	PlaySound("EFF_M01")
	Enemy()~ EXIT
END