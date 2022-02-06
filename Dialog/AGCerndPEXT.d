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
  GOTO AGCerndp01
  
// When we visit CERND in druid grove, but we've already handled Deril without him
  IF ~Global("DerilQuestAccepted", "GLOBAL", 1) Global("DerilQuestDone", "GLOBAL", 1)~ 
  THEN DO ~
		SetGlobal("DerilQuestAccepted","GLOBAL",2)
		SetGlobal("KickedOut","LOCALS",0)
		JoinParty()
	~ 
  GOTO AGCerndp02
  
END

APPEND CERNDP
	IF ~~ THEN BEGIN AGCerndp01
		SAY ~Proponuję, abyśmy czym prędzej udali się do posiadłości Derila. Bez szybkiego zakończenia tej sprawy będziemy musieli oglądać się za siebie jeszcze częściej niż dotychczas.~
		IF ~~ EXIT
	END
	
	IF ~~ THEN BEGIN AGCerndp02
		SAY ~Proponuję, abyśmy czym prędzej udali się do posiadłości Derila. Bez szybkiego zakończenia tej sprawy będziemy musieli oglądać się za siebie jeszcze częściej niż dotychczas.~
		IF ~~ THEN REPLY ~Juz się tym zajęliśmy, Cerndzie. Wolałem, byś dłużej odpoczął i spędził więcej czasu z synem.~  GOTO AGCerndp03
	END
	
	IF ~~ THEN BEGIN AGCerndp03
		SAY ~Ja... dziękuję, <CHARNAME>. Chciałem w tym uczestniczyć, w końcu to ja wciągnąłem cię w konflikt z Derilem. Wiedz jednak, że doceniam twój gest. Mam nadzieję, że obyło się bez większych problemów.~
		IF ~~ EXIT
	END
	
END

// TODO: Nowa zmienna, AGCerndp01 nie powinien byc wypowiadany, gdy deril quest denied, also check DerilAmbush != 1, w innym przypadku mamy za soba ambush
// wiec dialog ze juz go zalatwilismy i cernd sie cieszy 