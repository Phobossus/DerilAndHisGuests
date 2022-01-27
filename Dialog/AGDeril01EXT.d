ALTER_TRANS CEDERIL
BEGIN 15 END
BEGIN 0 END 
BEGIN
	"ACTION" ~SetGlobalTimer("DerilLichTimer","GLOBAL",THREE_DAYS)
			  SetGlobal("DerilLich","GLOBAL",1)
              ActionOverride("CeLich",ReallyForceSpell(Myself,DRYAD_TELEPORT))
              ReallyForceSpell(Myself,DRYAD_TELEPORT)
			  SetGlobal("DerilFled", "GLOBAL", 1)~
END
