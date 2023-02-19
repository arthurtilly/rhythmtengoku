
/* ------------------------ Beatscript Labels: Horse Machine ------------------------ */


@ Load Data
.macro load_horse_machine_labels
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


@ Load Game: Horse Machine
.macro load_horse_machine
    load_horse_machine_labels
    load_game horse_machine_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro horse_machine_event event, args
    game_event horse_machine_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro horse_machine_event00 args
    horse_machine_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro horse_machine_event01 args
    horse_machine_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro horse_machine_event02 args
    horse_machine_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro horse_machine_event03 args
    horse_machine_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro horse_machine_event04 args
    horse_machine_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro horse_machine_event05 args
    horse_machine_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro horse_machine_event06 args
    horse_machine_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro horse_machine_event07 args
    horse_machine_event 0x07, \args
.endm
