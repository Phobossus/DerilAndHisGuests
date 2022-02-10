BEGIN Lagole

IF ~~ THEN BEGIN 0
	SAY ~The seal you have prepared is useless, as it can be crossed by just any fools. Perhaps trusting your skills was a mistake?~
	IF ~~ THEN EXTERN ~Deril~ 1
END

IF ~Global("DerilDefeated", "GLOBAL", 3) !Allegiance(Myself, ENEMY)~ THEN BEGIN 1
	SAY ~So he turned out to be weak and far from ready. In other circumstances, I would probably thank you.~
	IF ~~ THEN REPLY ~It seems Deril enjoyed quite a ... specific company. What could you do with someone like him?~ GOTO 2
	IF ~~ THEN REPLY ~(Say nothing)~ GOTO 5
	IF ~~ THEN REPLY ~No problem, now if you'll excuse me...~ GOTO 3
	IF ~~ THEN REPLY ~Thanks accepted, now it's your turn.~ GOTO 4 
END

IF ~~ THEN BEGIN 2
	SAY ~He seemed to be a wizard with an above-average magical talent, and also belonged to circles that were important to us. When a network of influence is being built, people with a sufficiently high social status are of extreme value.~
	IF ~~ THEN REPLY ~Thanks to me, you could see that he would not be able to cope with more serious challenges.~ GOTO 5
	IF ~~ THEN REPLY ~Well, you will surely find someone to replace him. I'll go now.~ GOTO 3
	IF ~~ THEN REPLY ~I feel that nothing good will come of leaving you alive. It's time for you to die.~ GOTO 4
END 

IF ~~ THEN BEGIN 3
	SAY ~Not so fast. By killing Deril, you turned the plans of today he was a part of into ruins. Weaknesses can be worked on, but now I have to start all over again. I will not just let you go.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 4 
	SAY ~You are insane if you believe that you can emerge victorious from this confrontation. You will pay with your life both for delaying our operations in Amn and for being extremely foolish.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END 

IF ~~ THEN BEGIN 5
	SAY ~Even so, by killing Deril, you turned the plans of today he was a part of into ruins. Weaknesses can be worked on, but now I have to start all over again. As your punishment, you will share his fate.~
	IF ~~ THEN REPLY ~Killing me won't bring Deril back to life, and I have no reason to fight you. Can we not part in peace?~ EXTERN ~Verissa~ 0
	IF ~CheckStatLT(Player1, 16, CHR)~ THEN REPLY ~I believe my death is not in your interest.~ GOTO 6
	IF ~CheckStatGT(Player1, 15, CHR)~ THEN REPLY ~I believe my death is not in your interest.~ GOTO 7
	IF ~~ THEN REPLY ~Go ahead, one more fight makes no difference to me.~ GOTO 4
END

IF ~~ THEN BEGIN 6
	SAY ~No, I don't think there is any value in keeping you alive. You will suffer the consequences of your reckless actions and pay the highest price for them.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 7
	SAY ~So you think? Quite confident, aren't you. But it may be fun, even if it turns out to be merely a play for time.~ 
	IF ~~ THEN GOTO 8
END
	
IF ~~ THEN BEGIN 8
	SAY ~What would be the benefit of letting you leave this chamber alive?~
	IF ~~ THEN REPLY ~I have a power that neither Deril nor your demonologist could match. You will most certainly find a use for it.~ EXTERN ~Larottle~ 2
	IF ~~ THEN REPLY ~Tell me about your plans and I will give a thought to how I can help with them.~ EXTERN ~Marble~ 2
	IF ~~ THEN REPLY ~I spent a lot of time in Amn and Atkathla to make many ... useful contacts.~ EXTERN ~Marble~ 3
	IF ~PartyGoldGT(10000)~ THEN REPLY ~Although I am not a nobleman, I have quite a fortune. Ten thousand gold for all the trouble I have caused, and a promise not to get in your way again.~ EXTERN ~Marble~ 0
END

IF ~~ THEN BEGIN 9
	SAY ~Do not believe you can fool us. I know about all beings that cross the threshold of this property, I can also seal this place from the inside at any time.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
	SAY ~For this poor attempt at trickery, as well as for delaying our actions, I will make sure that you will have no peace, even in death.~
	IF ~~ THEN DO 
	~Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 11
	SAY ~I dare to doubt. If it were so, I would have known about you long ago. No, not even the guards will be interested in your disappearance.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 12
	SAY ~Do not make me laugh. The city council will owe us a debt of gratitude when we show them your corpses. The Pillar cannot dream of a better debut.~
	IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 13
	SAY ~All these discussions have bored me. Seems you are creating the same problems whether you're alive or dead. I do not have time for this.~ 
	IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
	SAY ~Begone, the way is unbarred. Take this as a chance to forget what you saw here. If it comes to your mind to tell too much, there will not be another. Finding you takes little effort.~
	IF ~~ THEN DO ~
	SetGlobal("PillarEscapesPeacefully", "GLOBAL", 1)
	~ EXIT
END


