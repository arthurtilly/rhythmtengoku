
/* ------------------------ Beatscript Labels: Metronome ------------------------ */


@ Load Data
.macro load_metronome_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Metronome
.macro load_metronome
    load_metronome_labels
    load_game metronome_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro metronome_event event, args
    game_event metronome_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro metronome_event00 args
    metronome_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro metronome_event01 args
    metronome_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro metronome_event02
    metronome_event EVENT_02, 0
.endm


@ [Event 0x03] ?
.macro metronome_event03
    metronome_event EVENT_03, 0
.endm
