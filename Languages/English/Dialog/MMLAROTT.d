BEGIN MMLAROTT

IF ~Global("NoticedKarsomir", "GLOBAL", 1) !Dead(Player1)~ THEN BEGIN 0
	SAY ~The Holy Avenger ... For years have I searched for this blade, and then it came to me. At last my revenge will be complete.~
	IF ~~ THEN DO ~SetGlobal("NoticedKarsomir", "GLOBAL", 2)~ EXIT
END

IF ~Global("LarotDefeated", "GLOBAL", 1)~ THEN BEGIN 1
	SAY ~Enough ... I'm not going to die for this jumble of weaklings. There are more important things that require my attention.~
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
	SAY ~It's funny. We have too many creatures and mercenaries that, at the beck and call of a sword, would decimate an army of hooded wizards or other organized groups if the need arose.~
	IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY ~The mere suggestion that we need your support is offensive enough ... I don't understand why we negotiate with them at all.~
	IF ~~ EXTERN ~MMMARBLE~ 1
END

IF ~~ THEN BEGIN 4
	SAY ~Enough! How long are we going to stand here hearing threats from meaningless adventurers?~
	IF ~~ THEN EXTERN ~MMMARBLE~ 5
END

IF ~~ THEN BEGIN 5
	SAY ~Quite the contrary, fate smiled at us. We have the unique opportunity to remove someone who would undoubtedly get in our way in the future without hesitation.~
	IF ~~ THEN EXTERN ~MMMARBLE~ 6
END

IF ~~ THEN BEGIN 6
	SAY ~This is not an option. We still need the identity of Marble, at least until we get the first permissions.~
	IF ~~ THEN EXTERN ~MMMARBLE~ 7
END

IF ~Global("StealKarsomir", "GLOBAL", 3)~ THEN BEGIN 7
	SAY ~Not only did you provide me with the object of my endless search, but also got rid of this pathetic jumble. I owe you the most sincere thanks.~
	IF ~~ THEN REPLY ~You are part of this jumble and you are about to join it.~ GOTO 8
	IF ~~ THEN REPLY ~Give the sword back, not like you will have any use for it.~ GOTO 9
END

IF ~~ THEN BEGIN 8
	SAY ~Perhaps this is how it looks to you. Pillar was just a tool, but you were of more use to me in just one day than any of this group. What a pity I will have to cut you to pieces in the end anyway.~
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END

IF ~~ THEN BEGIN 9
	SAY ~You have no idea how wrong you are. The sword can be profaned and its power reversed, and I know someone who is willing to help me with this.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
	SAY ~How amusing it will be to look at their faces when they see how the blade that once secured them victory, this time is the cause of their undoing. I will not forget the role you played in all of this, I may even give you a decent burial.~
	IF ~~ THEN DO ~
		Enemy()
	~ EXIT
END