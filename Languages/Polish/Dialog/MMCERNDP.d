ALTER_TRANS CERNDP
BEGIN 3 END
BEGIN 0 END 
BEGIN
	"TRIGGER" ~!Global("DerilQuestAccepted", "GLOBAL", 1)~
	"ACTION" ~
		SetGlobal("KickedOut","LOCALS",0)
		JoinParty()
	~
END

EXTEND_BOTTOM CERNDP 3
	
// When we visit CERND in druid grove in order to go to Deril together
  IF ~Global("DerilQuestAccepted", "GLOBAL", 1) !Global("DerilQuestDone", "GLOBAL", 1)~ 
  THEN DO ~
		SetGlobal("DerilQuestAccepted","GLOBAL",2)
		SetGlobal("KickedOut","LOCALS",0)
		JoinParty()
	~ 
  GOTO MMCerndp01
  
// When we visit CERND in druid grove, but we've already handled Deril without him
  IF ~Global("DerilQuestAccepted", "GLOBAL", 1) Global("DerilQuestDone", "GLOBAL", 1)~ 
  THEN DO ~
		SetGlobal("DerilQuestAccepted","GLOBAL",2)
		SetGlobal("KickedOut","LOCALS",0)
		JoinParty()
	~ 
  GOTO MMCerndp02
  
END

APPEND CERNDP
	IF ~~ THEN BEGIN MMCerndp01
		SAY ~Proponuję, abyśmy czym prędzej udali się do posiadłości Derila. Bez szybkiego zakończenia tej sprawy będziemy musieli oglądać się za siebie jeszcze częściej niż dotychczas.~
		IF ~~ EXIT
	END
	
	IF ~~ THEN BEGIN MMCerndp02
		SAY ~Proponuję, abyśmy czym prędzej udali się do posiadłości Derila. Bez szybkiego zakończenia tej sprawy będziemy musieli oglądać się za siebie jeszcze częściej niż dotychczas.~
		IF ~~ THEN REPLY ~Juz się tym zajęliśmy, Cerndzie. Wolałem, byś dłużej odpoczął i spędził więcej czasu z synem.~  GOTO MMCerndp03
	END
	
	IF ~~ THEN BEGIN MMCerndp03
		SAY ~Ja... dziękuję, <CHARNAME>. Chciałem w tym uczestniczyć, w końcu to ja wciągnąłem cię w konflikt z Derilem. Wiedz jednak, że doceniam twój gest. Mam nadzieję, że obyło się bez większych problemów.~
		IF ~~ EXIT
	END
	
END