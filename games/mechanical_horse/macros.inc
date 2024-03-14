
/* ------------------------ Beatscript Labels: Mechanical Horse ------------------------ */


@ Load Data
.macro load_mechanical_horse_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set EVENT_07,      0x07

    @ Cues
    .set CUE_WALK,      0x00
    .set CUE_TROT,      0x01
    .set CUE_CANTER,    0x02
    .set CUE_GALLOP,    0x03
.endm


@ Load Game: Mechanical Horse
.macro load_mechanical_horse
    load_mechanical_horse_labels
    load_game mechanical_horse_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro mechanical_horse_event event, args
    game_event mechanical_horse_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro mechanical_horse_event00 args
    mechanical_horse_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro mechanical_horse_event01 args
    mechanical_horse_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro mechanical_horse_event02 args
    mechanical_horse_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro mechanical_horse_event03 args
    mechanical_horse_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro mechanical_horse_event04 args
    mechanical_horse_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro mechanical_horse_event05 args
    mechanical_horse_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro mechanical_horse_event06 args
    mechanical_horse_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro mechanical_horse_event07
    mechanical_horse_event EVENT_07, 0
.endm
