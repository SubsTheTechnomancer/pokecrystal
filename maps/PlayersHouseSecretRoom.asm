    object_const_def

PlayersHouseSecretRoom_MapScripts:
    def_scene_scripts

    def_callbacks

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

SecretRoomPC6Script:
    jumptext SecretRoomPC6Text

SecretRoomPC7Script:
    jumptext SecretRoomPC7Text

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

SecretRoomPC6Text:
    text "RIP Vraj"
    line "        "
    cont "Unaware,"
    cont "Trigger Puller."
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
    bg_event 6, 7, BGEVENT_READ, SecretRoomPC6Script
    bg_event 10, 1, BGEVENT_READ, SecretRoomPC7Script

    def_object_events
