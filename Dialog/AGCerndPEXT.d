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
  IF ~Global("DerilQuestAccepted", "GLOBAL", 1)~ 
  THEN DO ~
		SetGlobal("DerilQuestAccepted","GLOBAL",2) // Cernd back, we're gonna head to the mansion, prepare it
		SetGlobal("KickedOut","LOCALS",0)
		JoinParty()
	~ 
  GOTO AGCerndp01
END

APPEND CERNDP
	IF ~~ THEN BEGIN AGCerndp01
		SAY ~Proponuję, abyśmy czym prędzej udali się do posiadłości Derila. Bez szybkiego zakończenia tej sprawy będziemy musieli oglądać się za siebie jeszcze częściej niż dotychczas.~
		IF ~~ EXIT
	END
	
END
