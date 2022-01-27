ALTER_TRANS CERNDJ 
BEGIN 54 END
BEGIN 0 END 
BEGIN
	"TRIGGER" ~Global("DerilFled", "GLOBAL", 1)~
	"ACTION" ~SetGlobal("CerndBaby","GLOBAL",1)
	SetGlobal("CerndBabyTalk","LOCALS",1)
	TakePartyItem("misc8t")
	DestroyItem("misc8t")~
	"EPILOGUE" ~GOTO DerilNotOver01~
END

EXTEND_BOTTOM CERNDJ 54
  IF ~!Global("DerilFled", "GLOBAL", 1)~ 
  THEN DO ~SetGlobal("CerndBaby","GLOBAL",1)
	SetGlobal("CerndBabyTalk","LOCALS",1)
	TakePartyItem("misc8t")
	DestroyItem("misc8t")~ 
  GOTO 56
END

APPEND CERNDJ
		/* Cernd and Deril - extended quest. */ 

	IF ~~ THEN BEGIN DerilNotOver01
		SAY ~Choć muszę cię na chwilę opuścić, to obawiam się, że powinniśmy doprowadzić tę sprawę do końca. Wiem, że starałeś się uniknąć rozlewu krwi, lecz czuję, że Deril nie wybaczy zarówno sobie, jak i nam, kompromitacji jakiej tu doświadczył.~
		IF ~~ THEN GOTO DerilNotOver02
	END

	IF ~~ THEN BEGIN DerilNotOver02
		SAY ~Myślę, że prędzej czy później podąży za nami, żeby wyrównać rachunki. Możemy mieć wpływ na czas i miejsce tego starcia i udać się wgłąb jego domu, ale nie będę cię do tego przekonywał.~
		IF ~~ THEN REPLY ~Zgadzam się Cerndzie, zostawienie go przy życiu jest zbyt niebezpieczne. Wrócimy tu jak tylko będziesz gotów.~ GOTO DerilNotOver03
		IF ~~ THEN REPLY ~Jeśli nas odszuka, to stawimy mu czoła. Być może czegoś się nauczył i zajmie się swoimi sprawami.~ GOTO DerilNotOver04
		IF ~~ THEN REPLY ~Zmęczyła mnie ta sprawa. Im szybciej stąd odejdziemy, tym lepiej.~ GOTO DerilNotOver05
	END

	IF ~~ THEN BEGIN DerilNotOver03
		SAY ~Jedna doba. Muszę upewnić się, że będzie bezpieczny. Wróćmy tu razem, jutro, teraz ruszam do Gaju. Nie zaryzykuję, że ten nędznik skrzywdzi...~
		IF ~~ THEN DO ~
			SetGlobal("DerilQuestAccepted", "GLOBAL", 1)
			AddJournalEntry(@15,QUEST)
		~ GOTO 56
	END 

	IF ~~ THEN BEGIN DerilNotOver04
		SAY ~Jeśli uważasz, że tak będzie lepiej. Wrócę teraz do Gaju z dzieckiem.~
		IF ~~ THEN GOTO 56
	END

	IF ~~ THEN BEGIN DerilNotOver05
		SAY ~Niech więc tak będzie. Pójdę teraz do Gaju z dzieckiem. ~
		IF ~~ THEN GOTO 56
	END 

	
END
