    object_const_def
    const SECRETROOM_ROBOT
    const SECRETROOM_MONDISPENSER

PlayersHouseSecretRoom_MapScripts:
    def_scene_scripts

    def_callbacks

DispenserScript:
    faceplayer
	opentext
	checkevent EVENT_GOT_DISPENSEDMON
	iftrue .GotDispensedMon
	writetext DispenserTakeThisMonText
	yesorno
	iffalse .Refused
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedDispenserMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke ELECTRODE, 30
	setevent EVENT_GOT_DISPENSEDMON
	closetext
	end

.NoRoom:
	writetext DispenserPartyFullText
	waitbutton
	closetext
	end

.GotDispensedMon:
	writetext DispenserIrritatedText
	waitbutton
	closetext
	end

.Refused:
	writetext DispenserNoMonText
	waitbutton
	closetext
	end

DispenserTakeThisMonText:
	text "DISPENSER: Hi!"
	line "Take this Mon."
	cont "Test it out with"
    cont "Robot Vraj over"
    cont "There."
	done

ReceivedDispenserMonText:
	text "<PLAYER> received"
	line "a Test Mon!"
	done

DispenserPartyFullText:
	text "Whoa, wait. You"
	line "can't carry any"
	cont "more #MON."
	done

DispenserNoMonText:
	text "You bastard"
	done

DispenserIrritatedText:
    text "Re hoe I already"
    line "gave you the"
    cont "mon go away"
	done

SecretRoomPC1Script:
    jumptext SecretRoomPC1Text

SecretRoomPC2Script:
    jumptext SecretRoomPC2Text

SecretRoomPC3Script:
    jumptext SecretRoomPC3Text

SecretRoomPC4Script:
    jumptext SecretRoomPC4Text

SecretRoomPC5Script:
    jumptext SecretRoomPC5Text

SecretRoomPC7Script:
    jumptext SecretRoomPC7Text

TrainerRobotVraj:
	trainer ROBOT, VRAJ, EVENT_BEAT_ROBOT_VRAJ, RobotVrajSeenText, RobotVrajBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RobotVrajAfterBattleText
	waitbutton
	closetext
	end

SecretRoomPC1Text:
    text "RIP Amogh"
    line "         "
    cont "Birdwatcher,"
    cont "Drone Lover."
    done

SecretRoomPC7Text:
    text "RIP Anish"
    line "         "
    cont "The God of all,"
    cont "Ultimate Pro."
    done

SecretRoomPC2Text:
    text "RIP Gaurav"
    line "          "
    cont "Communist,"
    cont "Eternally Static."
    done

SecretRoomPC3Text:
    text "RIP Kevin"
    line "         "
    cont "Englishman,"
    cont "Ilmetzik Devout."
    done

SecretRoomPC4Text:
    text "RIP Pranav"
    line "          "
    cont "Oddball,"
    cont "Rhythm Follower."
    done

SecretRoomPC5Text:
    text "RIP Subienay"
    line "            "
    cont "Gambler,"
    cont "Distractionist."
    done

RobotVrajSeenText:
	text "Beep Boop"
	line "I am a robot"
	cont "for your testing"
    cont "convieniences"

	para "Currently testing"
	line "VITAL THROW"
    cont "Ready?"
	done

RobotVrajBeatenText:
	text "Testing complete"
	line "goodbye"
	done

RobotVrajAfterBattleText:
	text "Yeah I'll figure"
	line "how to redo battle"
    cont "over and over"
    cont "later"
	done

PlayersHouseSecretRoom_MapEvents:
    db 0, 0; filler

    def_warp_events
    warp_event 0, 0, PLAYERS_HOUSE_1F, 1

    def_coord_events

    def_bg_events
    bg_event 2, 1, BGEVENT_READ, SecretRoomPC1Script
    bg_event 4, 1, BGEVENT_READ, SecretRoomPC2Script
    bg_event 6, 1, BGEVENT_READ, SecretRoomPC3Script
    bg_event 2, 7, BGEVENT_READ, SecretRoomPC4Script
    bg_event 4, 7, BGEVENT_READ, SecretRoomPC5Script
    bg_event 10, 1, BGEVENT_READ, SecretRoomPC7Script

    def_object_events
    object_event  2,  3, SPRITE_N64, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DispenserScript, -1
    object_event  6,  7, SPRITE_ROBOT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerRobotVraj, -1