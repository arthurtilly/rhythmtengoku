
/* ------------------------ BeatScript Labels: Rhythm Toy ------------------------ */


@ Load Data
.macro load_rhythm_toy_labels
    @ Game Events
    .set STUB_EVENT, 0x00

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Cat Machine
.macro load_cat_machine
    load_rhythm_toy_labels
    load_game RHYTHM_TOY, 0
.endm

@ Load Game: Cat Machine (ver1)
.macro load_cat_machine_ver1
    load_rhythm_toy_labels
    load_game RHYTHM_TOY, 1
.endm

@ Load Game: Confession Machine
.macro load_confession_machine
    load_rhythm_toy_labels
    load_game RHYTHM_TOY, 2
.endm

@ Load Game: Rap Machine
.macro load_rap_machine
    load_rhythm_toy_labels
    load_game RHYTHM_TOY, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rhythm_toy_event event, args
    game_event RHYTHM_TOY, \event, \args
.endm


@ [Event 0x00] Nothing
.macro toy_stub_event noArgs
    rhythm_toy_event 0x00, \noArgs
.endm
