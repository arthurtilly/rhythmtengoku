
/* ------------------------ BeatScript Labels: Drum LIVE ------------------------ */


@ Load Data
.macro load_drum_live_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set EVENT_07,      0x07
    .set EVENT_08,      0x08
    .set EVENT_09,      0x09
    .set STUB_EVENT,    0x0A

    @ Cues
    .set CUE_00,    0x00
    .set CUE_01,    0x01
    .set CUE_02,    0x02
    .set CUE_03,    0x03
    .set CUE_04,    0x04
    .set CUE_05,    0x05
.endm


@ Load Game: Drum Girls LIVE
.macro load_drum_girls_live
    load_drum_live_labels
    load_game DRUM_LIVE, 0
.endm

@ Load Game: Drum Boys LIVE
.macro load_drum_boys_live
    load_drum_live_labels
    load_game DRUM_LIVE, 1
.endm

@ Load Game: Drum Samurai's Band LIVE
.macro load_drum_samurai_band_live
    load_drum_live_labels
    load_game DRUM_LIVE, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro drum_live_event event, args
    game_event DRUM_LIVE, \event, \args
.endm


@ [Event 0x00] ?
.macro dml_event00 args
    drum_live_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro dml_event01 args
    drum_live_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro dml_event02 args
    drum_live_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro dml_event03 args
    drum_live_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro dml_event04 args
    drum_live_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro dml_event05 args
    drum_live_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro dml_event06 args
    drum_live_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro dml_event07 args
    drum_live_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro dml_event08 args
    drum_live_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro dml_event09 args
    drum_live_event 0x09, \args
.endm

@ [Event 0x0A] Nothing
.macro dml_stub_event noArgs
    drum_live_event 0x0A, \noArgs
.endm
