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
		SAY ~Either way, I'm afraid we should see this through to the end. I know you tried to avoid bloodshed, but I feel Deril will not forgive himself and us for the disgrace he suffered here.~
		IF ~~ THEN GOTO DerilNotOver02
	END

	IF ~~ THEN BEGIN DerilNotOver02
		SAY ~I think he will follow us sooner or later to get even. We can have control of the time and place of this encounter and go deeper into his house, but I will not be actively convincing you to do so.~
		IF ~~ THEN REPLY ~I agree, Cernd, it's too dangerous to let him live. We'll come back here as soon as you're ready.~ GOTO DerilNotOver03
		IF ~~ THEN REPLY ~If he finds us, we'll face him. Perhaps he has learned something and from now on he will take care of his own affairs.~ GOTO DerilNotOver04
		IF ~~ THEN REPLY ~All this got me tired. The sooner we get out of here, the better.~ GOTO DerilNotOver05
	END

	IF ~~ THEN BEGIN DerilNotOver03
		SAY ~One day. I have to make sure he's safe. Let's get back here together, tomorrow, now I'm going to the Grove. I will not risk that this wretch will hurt...~
		IF ~~ THEN DO ~
			SetGlobalTimer("SpawnThavin", "GLOBAL", ONE_DAY)
			SetGlobal("DerilQuestAccepted", "GLOBAL", 1)
			AddJournalEntry(@15,QUEST)
		~ GOTO 56
	END 

	IF ~~ THEN BEGIN DerilNotOver04
		SAY ~If you think that will be better. I will now return to the grove with the baby.~
		IF ~~ THEN DO ~
			SetGlobalTimer("SpawnThavin", "GLOBAL", ONE_DAY)
			AddJournalEntry(@16,QUEST)
		~ GOTO 56
	END

	IF ~~ THEN BEGIN DerilNotOver05
		SAY ~So be it. I will go to the grove with the baby now.~
		IF ~~ THEN DO ~
			SetGlobalTimer("SpawnThavin", "GLOBAL", ONE_DAY)
			AddJournalEntry(@16,QUEST)
		~ GOTO 56
	END 
	
	IF ~~ THEN BEGIN ReactDeril01
		SAY ~Seeing these beings, I have no doubts that it was the right decision to return here, <CHARNAME>. By stopping Deril, we will certainly prevent more than one misfortune. ~
		IF ~~ THEN EXIT
	END
	
	// In response to Deril appearing
	IF ~~ THEN BEGIN DerilAmbush01
		SAY ~An ambush during sleep ... He must have been following us for a long time. I was concerned about this scenario, <CHARNAME>. We should have attacked first, but we let him get the honor.~
		IF ~~ THEN EXTERN ~MMDERIL~ 4
	END 
	
	IF ~Global("CerndReactDerilQuestDone", "GLOBAL", 1)~ THEN BEGIN CerndReactPeacefulSolution
		SAY ~It's over, we've achieved our goal. I am concerned about the continued activity of this suspicious group, but at least it looks like they will not be worrying us. Thank you again, <CHARNAME>. I believe this is the last time we get off track due to my unfinished business. Let's go!~
		IF ~~ THEN EXIT
	END
	
	IF ~Global("CerndReactDerilQuestDone", "GLOBAL", 2)~ THEN BEGIN CerndReactHostileSolution
		SAY ~It's over now. Although we followed a single wasp, we took care of the entire nest. Thanks again, <CHARNAME>. I believe we will no longer need to get off track due to my unfinished business.~
		IF ~~ THEN EXIT
	END
	
	IF ~Global("CerndReactDerilQuestDone", "GLOBAL", 3)~ THEN BEGIN CerndReactAmbushSolution01
		SAY ~Well, I think we're home. This attack was predictable, though I did not expect Deril to get the support of so many dangerous beings.~
		IF ~~ THEN GOTO CerndReactAmbushSolution02
	END
	
	IF ~~ THEN BEGIN CerndReactAmbushSolution02
		SAY ~You know my opinion, <CHARNAME>. I didn't want to put us in danger. There is no point in discussing it now, however. We have won and we have this problem behind us. Let's continue our journey.~
		IF ~~ THEN EXIT
	END
	
END
