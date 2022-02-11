BEGIN MMMARBLE

IF ~~ THEN BEGIN 0
	SAY ~Ah, naivety. The sound of gold coins is a melody close to my heart, but a weak bargaining chip it is. What prevents me from simply ripping them off your body?~
	IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY ~Lagole, they're of no use to us, let us end this farce. If the Pillar loses its anonymity, we might as well go back to Luskan.~
	IF ~~ THEN EXTERN ~MMLAGOLE~ 6
END

IF ~~ THEN BEGIN 2
	SAY ~Well, that doesn't sound very promising.~
	IF ~~ THEN EXTERN ~MMVERISS~ 1
END

IF ~~ THEN BEGIN 3
	SAY ~Well, I'm afraid none of your *contacts* are with us today. So we already know that they are of no use to you ... in what would they be of use to us?~
	IF ~~ THEN REPLY ~I don't think you understand. If I die, finding a replacement for Deril will be the least of your problems.~ GOTO 4
	IF ~~ THEN REPLY ~Attack me and you will find that I did not come here alone.~ EXTERN ~MMLAGOLE~ 9
END

IF ~~ THEN BEGIN 4
	SAY ~What?~
	IF ~Global("WorkingForBodhi","GLOBAL",1) !Global("Chapter","GLOBAL",6)~ THEN REPLY ~What you just heard. My partners in the darkness world will not sit idly by the news of my death. They know I'm here, they know about you too, Lagole. I guess you don't want to have a guild war on your mind as well?~ EXTERN ~MMLAROTT~ 4
	IF ~Global("WorkingForAran","GLOBAL",1)~ THEN REPLY ~What you just heard. The Shadow Thieves will not sit idly by the news of my death. They know I'm here, they know about you too, Lagole. I guess you don't want to have a guild war on your mind as well?~ EXTERN ~MMLAROTT~ 4
	IF ~ReputationGT(Player1, 15)~ THEN REPLY ~What you just heard. I have many allies in Amn who owe me a great deal. They won't take well the news of my death. They know I'm here, they know about you too, Lagole. If any harm befalls me, you can forget about anonymity.~ EXTERN ~MMLAROTT~ 4
	IF ~ReputationGT(Player1, 7) ReputationLT(Player1, 16)~ THEN REPLY ~What you just heard. I have many allies in Amn who owe me a great deal. They won't take well the news of my death. They know I'm here, they know about you too, Lagole. If any harm befalls me, you can forget about anonymity.~ EXTERN ~MMLAGOLE~ 11
	IF ~ReputationLT(Player1, 8)~ THEN REPLY ~What you just heard. I have many allies in Amn who owe me a great deal. They won't take well the news of my death. They know I'm here, they know about you too, Lagole. If any harm befalls me, you can forget about anonymity.~ EXTERN ~MMLAGOLE~ 12
END

IF ~~ THEN BEGIN 5
	SAY ~So my hunch was right. No doubt this <RACE> is <CHARNAME>.~
	IF ~~ THEN EXTERN ~MMVERISS~ 2
END

IF ~~ THEN BEGIN 6
	SAY ~Yes, yes, but we can't just ignore the potential repercussions. Your short-sightedness will reverse our progress for many months, Larottle.~
	IF ~~ THEN EXTERN ~MMVERISS~ 3
END

IF ~~ THEN BEGIN 7
	SAY ~Indeed, I would prefer to avoid abandoning this form prematurely ... otherwise it would be the optimal solution.~
	IF ~~ THEN EXTERN ~MMVERISS~ 4
END

