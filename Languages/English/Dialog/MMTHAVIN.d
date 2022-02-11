BEGIN MMTHAVIN

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY ~I suspected this fool could not keep his mouth shut, though it does not matter. His fate will soon be decided, and I'll get rid of you before you can do any damage.~
		++ ~Get deril or get out of my way, this does not concern you whoever you are.~ GOTO 1
		++ ~Great, I could use a little warm up.~ GOTO 2
END

IF ~~ THEN BEGIN 1
SAY ~I could not care less about your personal skirmishes. The Pillar benefits from his influence in Atkathla and I will not let Lagole get into doubts again.~ 
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
SAY ~I'm afraid that you will be the ones warming us up. Come, my dearests, we shall show Deril how to effectively crack down on intruders.~ 
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