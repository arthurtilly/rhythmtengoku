
/* ------------------------ Beatscript Labels: Rhythm Test ------------------------ */


@ Load Data
.macro load_rhythm_test_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set STUB_EVENT,    0x07

    @ Cues
    .set CUE_00,    0x00
    .set CUE_01,    0x01
.endm


@ Load Game: Rhythm Test
.macro load_rhythm_test
    load_rhythm_test_labels
    load_game rhythm_test_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rhythm_test_event event, args
    game_event rhythm_test_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro rhythm_test_event00 args
    rhythm_test_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro rhythm_test_event01 args
    rhythm_test_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro rhythm_test_event02 args
    rhythm_test_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro rhythm_test_event03 args
    rhythm_test_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro rhythm_test_event04 args
    rhythm_test_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro rhythm_test_event05 args
    rhythm_test_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro rhythm_test_event06 args
    rhythm_test_event 0x06, \args
.endm

@ [Event 0x07] Nothing
.macro rhythm_test_stub_event noArgs
    rhythm_test_event 0x07, \noArgs
.endm
