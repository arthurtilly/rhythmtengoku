
/* ------------------------ BeatScript Labels: Metronome ------------------------ */


@ Load Data
.macro load_metronome_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set STUB_EVENT,    0x04

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Metronome
.macro load_metronome
    load_metronome_labels
    load_game METRONOME, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro metronome_event event, args
    game_event METRONOME, \event, \args
.endm


@ [Event 0x00] ?
.macro metro_event00 args
    metronome_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro metro_event01 args
    metronome_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro metro_event02 args
    metronome_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro metro_event03 args
    metronome_event 0x03, \args
.endm

@ [Event 0x04] Nothing
.macro metro_stub_event noArgs
    metronome_event 0x04, \noArgs
.endm
