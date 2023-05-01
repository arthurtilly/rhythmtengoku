
/* ------------------------ Beatscript Labels: Rhythm Toy ------------------------ */


@ Load Data
.macro load_rhythm_toys_labels
    @ Game Events
    .set STUB_EVENT, 0x00

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Cat Machine
.macro load_cat_machine
    load_rhythm_toys_labels
    load_game rhythm_toys_engine, 0
.endm

@ Load Game: Cat Machine (ver1)
.macro load_cat_machine_ver1
    load_rhythm_toys_labels
    load_game rhythm_toys_engine, 1
.endm

@ Load Game: Confession Machine
.macro load_love_machine
    load_rhythm_toys_labels
    load_game rhythm_toys_engine, 2
.endm

@ Load Game: Rap Machine
.macro load_rap_machine
    load_rhythm_toys_labels
    load_game rhythm_toys_engine, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rhythm_toys_event event, args
    game_event rhythm_toys_engine, \event, \args
.endm


@ [Event 0x00] Nothing
.macro rhythm_toys_stub_event
    rhythm_toys_event STUB_EVENT, 0
.endm
