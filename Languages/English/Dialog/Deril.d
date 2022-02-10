BEGIN Deril

IF ~NumTimesTalkedTo(0) Global("DerilAmbush", "GLOBAL", 0)~ THEN BEGIN 0
	SAY ~That's you? I was planning to take care of you when it's over, but you spared me the trouble. My guests will surely appreciate this show.~
	IF ~~ THEN DO ~SetGlobal("DerilFled", "GLOBAL", 2)~
	EXTERN ~Lagole~ 0
END

IF ~~ THEN BEGIN 1
	SAY ~The spell had no weak point, someone had to deactivate it. Thavin? Never mind ... I'll bring it back and put an end to this matter once and for all.~
	IF ~~ THEN DO ~SetGlobal("SealExitAGAR01", "GLOBAL", 1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
	SAY ~See with your own eyes how those who stick their nose into other people's business end up! I will prove my worth here!~
	IF ~IsValidForPartyDialogue("CERND")~ THEN DO ~Enemy()~ EXTERN ~CERNDJ~ ReactDeril01
	IF ~IsValidForPartyDialogue("KELDORN")~ THEN DO ~Enemy()~ EXTERN ~KELDORJ~ ReactDeril01
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END

IF ~NumTimesTalkedTo(0) Global("DerilAmbush", "GLOBAL", 1)~ THEN BEGIN 3
	SAY ~Well, you're finally awake. I said I would come for you! I was worthy, and now I will take revenge for your slight!~
	IF ~IsValidForPartyDialogue("CERND")~ THEN EXTERN ~CERNDJ~ DerilAmbush01
	IF ~!IsValidForPartyDialogue("CERND")~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
	SAY ~It would be cowardly to eliminate a few sleeping, helpless victims. No, you will be fully aware of the moment of your death as well as who is responsible for it!~
	IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
	SAY ~Come on, comrades, feel free! I promised it would be worth your time and I intend to keep my word!~
	IF ~~ THEN DO ~
		Enemy()
		SetGlobal("PillarMembersArrive", "GLOBAL", 1)
	~ EXIT
END