APPEND ACBREJ

IF WEIGHT #5 ~Global("ACBLUN14","LOCALS",1)~ THEN BEGIN BLUN14
SAY @0 
IF ~~ THEN DO ~SetGlobal("ACBLUN14","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACDAGG19","LOCALS",1)~ THEN BEGIN DAGG19
SAY @1
++ @2 DO ~SetGlobal("ACDAGG19","LOCALS",2)~ + DAGG19.1
++ @3 DO ~SetGlobal("ACDAGG19","LOCALS",2)~ + DAGG19.2
++ @4 DO ~SetGlobal("ACDAGG19","LOCALS",2)~ + DAGG19.3
++ @5 DO ~SetGlobal("ACDAGG19","LOCALS",2)~ + DAGG19.4
++ @6 DO ~SetGlobal("ACDAGG19","LOCALS",2)~ + DAGG19.5
END

IF ~~ THEN BEGIN DAGG19.1
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DAGG19.2
SAY @8
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DAGG19.3
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DAGG19.4
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DAGG19.5
SAY @11
IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("ACSCRL2J","LOCALS",1)~ THEN BEGIN ACSCRL2J
SAY @12
++ @13 DO ~SetGlobal("ACSCRL2J","LOCALS",2)~ + ACSCRL2J.1
++ @14 DO ~SetGlobal("ACSCRL2J","LOCALS",2)~ + ACSCRL2J.2
++ @15 DO ~SetGlobal("ACSCRL2J","LOCALS",2)~ + ACSCRL2J.3
END

IF ~~ THEN BEGIN ACSCRL2J.1
SAY @16
IF ~~ THEN GOTO ACSCRL2J.4
END

IF ~~ THEN BEGIN ACSCRL2J.2
SAY @17
IF ~~ THEN GOTO ACSCRL2J.4
END

IF ~~ THEN BEGIN ACSCRL2J.3
SAY @18
IF ~~ THEN GOTO ACSCRL2J.4
END

IF ~~ THEN BEGIN ACSCRL2J.4
SAY @19 = @20
IF ~~ THEN DO ~AddJournalEntry(@10032,QUEST)~ EXIT
END

IF WEIGHT #5 ~Global("ACHAMM06","LOCALS",1)~ THEN BEGIN HAMM06
SAY @21
IF ~~ THEN DO ~SetGlobal("ACHAMM06","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACLEAT22","LOCALS",1)~ THEN BEGIN LEAT22
SAY @22
IF ~~ THEN DO ~SetGlobal("ACLEAT22","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACMISC5A","LOCALS",1)~ THEN BEGIN MISC5A
SAY @23
IF ~~ THEN DO ~SetGlobal("ACMISC5A","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACMISC5Z","LOCALS",1)~ THEN BEGIN MISC5Z
SAY @24
IF ~~ THEN DO ~SetGlobal("ACMISC5Z","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACMISC7R","LOCALS",1)~ THEN BEGIN MISC7R
SAY @25 
IF ~~ THEN DO ~SetGlobal("ACMISC7R","LOCALS",2)~ EXIT
END

IF WEIGHT #5 ~Global("ACDRAGONSCALES","LOCALS",1)~ THEN BEGIN DRAGONSCALES1
SAY @26 = @27
IF ~~ THEN DO ~IncrementGlobal("ACDRAGONSCALES","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~Global("ACDRAGONSCALES","LOCALS",3)~ THEN BEGIN DRAGONSCALES3
SAY @28 = @29
++ @30 DO ~IncrementGlobal("ACDRAGONSCALES","LOCALS",1)~ + DRAGONSCALES3.1
++ @31 DO ~IncrementGlobal("ACDRAGONSCALES","LOCALS",1)~ + DRAGONSCALES3.2
++ @32 DO ~IncrementGlobal("ACDRAGONSCALES","LOCALS",1)~ + DRAGONSCALES3.3
END

IF ~~ THEN BEGIN DRAGONSCALES3.1
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DRAGONSCALES3.2
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DRAGONSCALES3.3
SAY @35
IF ~~ THEN EXIT
END

IF WEIGHT #5 ~Global("ACBERROBOOK","LOCALS",3)~ THEN BEGIN BERROBOOK2
SAY @37
IF ~~ THEN DO ~IncrementGlobal("ACBERROBOOK","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~Global("ACBERROBOOK","LOCALS",5)~ THEN BEGIN BERROBOOK3
SAY @38
IF ~~ THEN DO ~IncrementGlobal("ACBERROBOOK","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~Global("ACBERROSTONE","LOCALS",1)~ THEN BEGIN BERROSTONE1
SAY @39
IF ~~ THEN DO ~IncrementGlobal("ACBERROSTONE","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~Global("ACBERROSTONE","LOCALS",3)~ THEN BEGIN BERROSTONE2
SAY @40
IF ~~ THEN DO ~IncrementGlobal("ACBERROSTONE","LOCALS",1)~ EXIT
END

IF WEIGHT #5 ~Global("ACBERROSTONE","LOCALS",5)~ THEN BEGIN BERROSTONE3
SAY @41
IF ~~ THEN DO ~IncrementGlobal("ACBERROSTONE","LOCALS",1)~ EXIT
END

END

CHAIN
IF WEIGHT #5 ~Global("ACBERROBOOK","LOCALS",1)~ THEN ACBREJ BERROBOOK1
@42 DO ~IncrementGlobal("ACBERROBOOK","LOCALS",1) AddJournalEntry(@10048,QUEST)~
==BNALIA IF ~InParty("NALIA")See("NALIA")!StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @43
==ACBREJ IF ~InParty("NALIA")See("NALIA")!StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @44
==ACBREJ @45 
==BJAHEIR IF ~InParty("JAHEIRA")See("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @46
==BKELDOR IF ~InParty("KELDORN")See("KELDORN")!StateCheck("KELDORN",CD_STATE_NOTVALID)OR(3)!InParty("JAHEIRA")!See("JAHEIRA")StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @47
==BANOMEN IF ~InParty("ANOMEN")See("ANOMEN")!StateCheck("ANOMEN",CD_STATE_NOTVALID)OR(3)!InParty("KELDORN")!See("KELDORN")StateCheck("KELDORN",CD_STATE_NOTVALID)OR(3)!InParty("JAHEIRA")!See("JAHEIRA")StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @47
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACBLUN14A","LOCALS",1)~ THEN ACBREJ BLUN14A
@56 DO ~SetGlobal("ACBLUN14A","LOCALS",2)~
==ACBREJ IF ~InParty("NALIA")See("NALIA")!StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @57
==BNALIA IF ~InParty("NALIA")See("NALIA")!StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @58
==ACBREJ IF ~InParty("NALIA")See("NALIA")!StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @59
==ACBREJ IF ~OR(3)!InParty("NALIA")!See("NALIA")StateCheck("NALIA",CD_STATE_NOTVALID)~ THEN @60
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACHAMM09","LOCALS",1)~ THEN ACBREJ HAMM09
@66 DO ~SetGlobal("ACHAMM09","LOCALS",2)~
==WSMITH01 IF ~See("WSMITH01")!StateCheck("WSMITH01",CD_STATE_NOTVALID)~ THEN @67
==ACBREJ IF ~See("WSMITH01")!StateCheck("WSMITH01",CD_STATE_NOTVALID)~ THEN @68
==WSMITH01 IF ~See("WSMITH01")!StateCheck("WSMITH01",CD_STATE_NOTVALID)~ THEN @69
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISC4N","LOCALS",1)~ THEN ACBREJ MISC4N
@73 DO ~SetGlobal("ACMISC4N","LOCALS",2)~
==BJAHEIR IF ~InParty("JAHEIRA")See("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @74
==ACBREJ IF ~InParty("JAHEIRA")See("JAHEIRA")!StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @75
==ACBREJ @76
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISC4E","GLOBAL",1)~ THEN ACBREJ MISC4E
@77 DO ~SetGlobal("ACMISC4E","GLOBAL",2)~
== ~%IMOENJ_ID%~ IF ~InParty("%ImoenDV_ID%")See("%ImoenDV_ID%")!StateCheck("%ImoenDV_ID%",CD_STATE_NOTVALID)~ THEN @78
==ACBREJ IF ~InParty("%ImoenDV_ID%")See("%ImoenDV_ID%")!StateCheck("%ImoenDV_ID%",CD_STATE_NOTVALID)~ THEN @79
==ACBREJ @80 DO ~AddJournalEntry(@125,QUEST)~
EXIT

APPEND ACBREJ

IF WEIGHT #-1
~Global("ACMISC4E","GLOBAL",3)~ THEN BEGIN use_energycells
SAY @123 /* ~Das ist eine schöne Schmiede, <CHARNAME>. Wie ärgerlich, dass sie nur für dieses Dunkelvolk zugänglich ist. Wenn wir hier fertig sind, würde ich hier mit den Energiezellen gerne meinen Arm verbessern. */
IF ~~ THEN DO ~SetGlobal("ACMISC4E","GLOBAL",4)~ UNSOLVED_JOURNAL @126 EXIT
END

IF WEIGHT #-1
~Global("ACMISC4E","GLOBAL",6)~ THEN BEGIN energycells_done
SAY @124 /* Ja, das hat so geklappt wie ich es mir dachte, auch wenn das Schmieden am eigenen Arm etwas heikel ist, bei Moradin. Aber nun profitiert mein Silberarm von der Magie dieser verflixten Dinger, er ist nun merkbar stärker.~ */
IF ~~ THEN DO ~EraseJournalEntry(@125)
EraseJournalEntry(@126)SetGlobal("ACMISC4E","GLOBAL",7)AddexperienceParty(15000)~ SOLVED_JOURNAL @127 EXIT
END
END //APPEND

CHAIN
IF WEIGHT #5 ~Global("ACMISC5K","LOCALS",1)~ THEN ACBREJ MISC5K
@81 DO ~SetGlobal("ACMISC5K","LOCALS",2)~
==BANOMEN IF ~InParty("ANOMEN")See("ANOMEN")!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @82
==ACBREJ IF ~InParty("ANOMEN")See("ANOMEN")!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @83
==BANOMEN IF ~InParty("ANOMEN")See("ANOMEN")!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @84
==ACBREJ IF ~InParty("ANOMEN")See("ANOMEN")!StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @85
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISC6Q","LOCALS",1)~ THEN ACBREJ MISC6Q
@91 DO ~SetGlobal("ACMISC6Q","LOCALS",2)~
==BYOSHIM IF ~InParty("YOSHIMO")See("YOSHIMO")!StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @92
==ACBREJ @93 = @94 = @95
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISC9H","LOCALS",1)~ THEN ACBREJ MISC9H
@105 DO ~SetGlobal("ACMISC9H","LOCALS",2)~
==BAERIE IF ~InParty("AERIE")See("AERIE")!StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @106
==ACBREJ IF ~InParty("AERIE")See("AERIE")!StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @107
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISCBU","LOCALS",1)~ THEN ACBREJ MISCBU
@112 DO ~SetGlobal("ACMISCBU","LOCALS",2)~
==BKELDOR IF ~InParty("KELDORN")InMyArea("KELDORN")!StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @113
==BEDWIN IF ~InParty("EDWIN")InMyArea("EDWIN")!StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @114
==ACBREJ @115 
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACACBOOK02","LOCALS",1)~ THEN ACBREJ ACBOOK02 
@116 DO ~SetGlobal("ACACBOOK02","LOCALS",2)~
==BMINSC IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @117
==ACBREJ IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @118
==BMINSC IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @119
==ACBREJ IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @120
==BMINSC IF ~InParty("MINSC")See("MINSC")!StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @121
==ACBREJ @122
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACDWDUST","LOCALS",1)~ THEN ACBREJ DWDUST
@63 DO ~SetGlobal("ACDWDUST","LOCALS",2)~
==BVICONI IF ~InParty("VICONIA")See("VICONIA")!StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @64
==ACBREJ IF ~InParty("VICONIA")See("VICONIA")!StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @65
EXIT

CHAIN
IF WEIGHT #5 ~Global("ACMISCBL","LOCALS",1)~ THEN ACBREJ MISCBL
@75 DO ~SetGlobal("ACMISCBL","LOCALS",2)~
==ACBREJ IF ~PartyHasItem("MISCBL")~ THEN @108
==ACBREJ IF ~PartyHasItem("MISCBM")~ THEN @109
==ACBREJ IF ~PartyHasItem("MISCBN")~ THEN @110
==ACBREJ IF ~PartyHasItem("MISCBO")~ THEN @111 
EXIT

