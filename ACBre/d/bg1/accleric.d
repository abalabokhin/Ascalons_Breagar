BEGIN ACCLERIC

IF ~!AreaCheck("ACCEM1")NumTimesTalkedTo(0)~ THEN BEGIN 1
SAY @0
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",5)~ THEN REPLY @1 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
++ @2 + 3
++ @3 + 4
END

IF ~!AreaCheck("ACCEM1")Global("ACREVIQUEST","GLOBAL",5)NumTimesTalkedToGT(0)~ THEN BEGIN 1a
SAY @4
IF ~PartyHasItem("ACHAND3")GlobalLT("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @1 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
++ @2 + 3
++ @3 + 4
END

IF ~~ THEN BEGIN 2
SAY @5
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @6 + 8
++ @7 + 6
++ @8 + 5
++ @2 + 3
++ @3 + 4
END

IF ~~ THEN BEGIN 3
SAY @9
IF ~PartyHasItem("ACHAND3")GlobalGT("ACREVIQUEST","GLOBAL",0)GlobalLT("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @1 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @6 + 8
++ @10 + 5
++ @3 + 4
END

IF ~~ THEN BEGIN 4
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
SAY @12
IF ~PartyHasItem("ACHAND3")GlobalGT("ACREVIQUEST","GLOBAL",0)GlobalLT("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @13 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @6 + 8
++ @7 + 6
++ @14 + 7
++ @3 + 4
END

IF ~~ THEN BEGIN 6
SAY @15
IF ~PartyHasItem("ACHAND3")GlobalGT("ACREVIQUEST","GLOBAL",0)GlobalLT("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @13 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @6 + 8
++ @8 + 5
++ @3 + 4
END

IF ~~ THEN BEGIN 7
SAY @16
IF ~PartyHasItem("ACHAND3")GlobalGT("ACREVIQUEST","GLOBAL",0)GlobalLT("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @17 DO ~SetGlobal("ACREVIQUEST","GLOBAL",6)~ + 2
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",6)~ THEN REPLY @18 + 8
++ @8 + 5
++ @19 + 4
END

IF ~~ THEN BEGIN 8
SAY @20
++ @21 DO ~EraseJournalEntry(@10019)AddJournalEntry(@10021,INFO)SetGlobal("ACREVIQUEST","GLOBAL",7)~ + 9
++ @22 DO ~EraseJournalEntry(@10019)AddJournalEntry(@10021,INFO)SetGlobal("ACREVIQUEST","GLOBAL",7)~ + 10
END

IF ~~ THEN BEGIN 9
SAY @23
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_07")~ EXIT
END

IF ~~ THEN BEGIN 10
SAY @24
IF ~~ THEN EXIT
END

IF ~!AreaCheck("ACCEM1")GlobalGT("ACREVIQUEST","GLOBAL",6)PartyHasItem("ACHAND3")~ THEN BEGIN 11
SAY @25
++ @26 + 9
++ @22 + 10
END

IF ~PartyHasItem("ACHAND3")AreaCheck("ACCEM1")Global("ACREVIQUEST","GLOBAL",7)Global("ACREVIQUESTBEGINS","LOCALS",0)~ THEN BEGIN 13
SAY @27 = @28
IF ~~ THEN DO ~SetGlobal("ACREVIQUESTBEGINS","LOCALS",1)~ EXIT
END

IF ~PartyHasItem("ACHAND3")Global("ACREVIQUESTBEGINS","LOCALS",1)!Global("ACREVIQUEST","GLOBAL",8)AreaCheck("ACCEM1")~ THEN BEGIN 14
SAY @29
++ @30 + 15
++ @31 EXIT
END

IF ~~ THEN BEGIN 15
SAY @32
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_08")~ EXIT
END

IF ~~ THEN BEGIN 15a
SAY @33
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT_08")~ EXIT
END

IF ~~ THEN BEGIN 15b
SAY @34
IF ~~ THEN EXIT
END

IF ~PartyHasItem("ACHAND3")Global("ACREVIQUESTBEGINS","LOCALS",1)Global("ACREVI2DEAD","GLOBAL",1)Global("ACREVIQUEST","GLOBAL",8)AreaCheck("ACCEM1")~ THEN BEGIN 17
SAY @35
++ @36 DO ~SetGlobal("ACREVI2DEAD","GLOBAL",2)SetGlobal("ACREVIQUEST","GLOBAL",10)~ + 15a
++ @37 DO ~SetGlobal("ACREVI2DEAD","GLOBAL",2)SetGlobal("ACREVIQUEST","GLOBAL",10)~ + 15b
END

IF ~PartyHasItem("ACHAND3")Global("ACREVIQUEST","GLOBAL",10)AreaCheck("ACCEM1")~ THEN BEGIN 14a
SAY @29
++ @30 + 15
++ @31 EXIT
END

CHAIN
IF ~PartyHasItem("ACHAND3")Global("ACREVIQUESTBEGINS","LOCALS",1)!Global("ACREVI2DEAD","GLOBAL",1)Global("ACREVIQUEST","GLOBAL",8)AreaCheck("ACCEM1")~ THEN ACCLERIC 16
@38
==ACREVI2 @39
==ACCLERIC @40
==ACREVI2 @41
==ACCLERIC @42
==ACREVI2 @43
==ACCLERIC @44
END
IF ~~ THEN DO ~ClearAllActions()StartCutSceneMode()StartCutScene("ACCUT08a")~ EXIT