
/* ------------------------ Beatscript Labels: LIVE Menu ------------------------ */


@ Load Data
.macro load_concert_hall_labels
    @ Game Events
    .set FREEZE_SCENE,  0x00

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
    concert_hall_event FREEZE_SCENE, \args
.endm
