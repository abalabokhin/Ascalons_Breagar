APPEND ACSILVER

IF ~~ THEN BEGIN SILVER.6
SAY @0 = @1
++ @2 + SILVER.7
++ @3 + SILVER.8
++ @4 + SILVER.5
END

IF ~~ THEN BEGIN SILVER.7
SAY @5
++ @6 + SILVER.6
++ @3 + SILVER.8
++ @4 + SILVER.5
END

IF ~~ THEN BEGIN SILVER.8
SAY @7
++ @6 + SILVER.6
++ @2 + SILVER.7
++ @4 + SILVER.5
END

END

CHAIN
IF ~Global("ACLASTPLOT","GLOBAL",0)%BGT_VAR%GlobalLT("ACSILVERAPPEARS","GLOBAL",7)NumTimesTalkedTo(0)~ THEN ACSILVER FIRSTMEET.1
@36 
==ACBREJ @37   
==ACSILVER @38   
END
++ @39 + SILVER.2
++ @40 + SILVER.2
++ @41 + SILVER.3

CHAIN
IF ~~ THEN ACSILVER SILVER.2
@42 = @43
==ACBREJ @44
==ACSILVER @45 = @46
==ACBREJ @47
==ACSILVER @48
END
++ @49 EXTERN ACBREJ SILVER.4
++ @50 EXTERN ACBREJ SILVER.4
++ @51 EXTERN ACBREJ SILVER.4
++ @41 + SILVER.5

CHAIN
IF ~~ THEN ACSILVER SILVER.3
@43
==ACBREJ @44
==ACSILVER @45 = @46
==ACBREJ @47
==ACSILVER @48
END
++ @49 EXTERN ACBREJ SILVER.4
++ @50 EXTERN ACBREJ SILVER.4
++ @51 EXTERN ACBREJ SILVER.4
++ @41 + SILVER.5

CHAIN
IF ~~ THEN ACBREJ SILVER.4
@52
==ACSILVER @53 = @54
==ACBREJ @55
==ACSILVER @56
END
++ @57 EXTERN ACSILVER SILVER.6
++ @58 EXTERN ACSILVER SILVER.7
++ @3 EXTERN ACSILVER SILVER.8

CHAIN
IF ~~ THEN ACSILVER SILVER.5
@59 = @60
==ACBREJ @61
==ACSILVER @62   
==ACBREJ @63
==ACSILVER @64 = @65    = @66    = @67   
==ACBREJ @68
==ACSILVER @69   
END
IF ~~ THEN DO ~AddJournalEntry(@10014,QUEST)SetGlobal("ACSTORY","GLOBAL",4)ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_05")~ EXIT


CHAIN
IF ~Global("ACLASTPLOT","GLOBAL",0)%BGT_VAR%GlobalGT("ACSILVERAPPEARS","GLOBAL",6)NumTimesTalkedTo(0)~ THEN ACSILVER SILVERSTART2
@70  = @71
==ACBREJ @72
==ACSILVER @73 = @74   
==ACBREJ @75
==ACSILVER @76    = @77
==ACBREJ @78
==ACSILVER @79
END
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_06")~ EXIT

CHAIN
IF ~%BGT_VAR%Global("ACLASTPLOT","GLOBAL",0)Global("AC25PLOT","GLOBAL",0)NumTimesTalkedTo(1)~ THEN ACSILVER REMEET.2
@80
==ACBREJ @81 = @82
==ACSILVER @83
==ACBREJ @84
==ACSILVER @85 = @86 = @87 = @88
END
IF ~~ THEN DO ~AddJournalEntry(@10017,INFO)AddJournalEntry(@10016,QUEST_DONE)EraseJournalEntry(@10014)SetGlobal("ACSTORY","GLOBAL",5)ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_05")SetGlobal("ACREVIQUEST","GLOBAL",1)SetGlobalTimer("ACREVIQUESTTIMER","GLOBAL",ONE_DAY)~ EXIT
