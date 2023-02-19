
/* ------------------------ Beatscript Labels: LIVE Menu ------------------------ */


@ Load Data
.macro load_concert_hall_labels
    @ Game Events
    .set FREEZE_SCENE,  0x00
    .set STUB_EVENT,    0x01

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: LIVE Menu
.macro load_concert_hall
    load_concert_hall_labels
    load_game concert_hall_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro concert_hall_event event, args
    game_event concert_hall_engine, \event, \args
.endm


@ [Event 0x00] Freeze Scene
.macro concert_hall_freeze_scene args
    concert_hall_event 0x00, \args
.endm

@ [Event 0x01] Nothing
.macro concert_hall_stub_event noArgs
    concert_hall_event 0x01, \noArgs
.endm
