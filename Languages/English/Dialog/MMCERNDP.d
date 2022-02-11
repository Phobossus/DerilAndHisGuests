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
		SAY ~I suggest that we go to Deril's estate as soon as possible. Without a quick end to this case, we will have to look over our shoulders even more often than before.~
		IF ~~ EXIT
	END
	
	IF ~~ THEN BEGIN MMCerndp02
		SAY ~I suggest that we go to Deril's estate as soon as possible. Without a quick end to this case, we will have to look over our shoulders even more often than before.~
		IF ~~ THEN REPLY ~We've already taken care of it, Cernd. I preferred you to rest longer and spend more time with your son.~  GOTO MMCerndp03
	END
	
	IF ~~ THEN BEGIN MMCerndp03
		SAY ~I ... thank you, <CHARNAME>. I wanted to be part of it, after all, it is me who got you into conflict with Deril. But know that I do appreciate your gesture. I hope it was without any major problems.~
		IF ~~ EXIT
	END
	
END