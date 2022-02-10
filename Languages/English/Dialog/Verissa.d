BEGIN Verissa

IF ~~ THEN BEGIN 0
	SAY ~Regardless of the circumstances, you have seen too much today. Let the song of torment lay you down to eternal sleep.~
	IF ~~ THEN DO~
	Enemy()
	Shout(99)
	~ EXIT
END

IF ~~ THEN BEGIN 1
	SAY ~We don't know much about you or your strengths, and if you yourself are not eager to present them, it is likely they are not especially remarkable. You have already wasted our time once, it would be foolish to allow you to do that again.~
	IF ~~ THEN EXTERN ~Lagole~ 6
END

IF ~~ THEN BEGIN 2
	SAY ~<CHARNAME> here? This... complicates things a bit.~
	IF ~~ THEN EXTERN ~Larottle~ 5
END

IF ~~ THEN BEGIN 3
	SAY ~There is another possibility. Make some use of your Maurezhi abilities and overtake him. No one would get suspicious, and a person of <CHARNAME>'s reputation will make the perfect-~
	IF ~~ THEN EXTERN ~Larottle~ 6
END

IF ~~ THEN BEGIN 4
	SAY ~I fail to see a satisfying way out of the situation.~
	IF ~~ THEN EXTERN ~Lagole~ 13
END