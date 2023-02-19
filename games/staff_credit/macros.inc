
/* ------------------------ Beatscript Labels: Staff Credit ------------------------ */


@ Load Data
.macro load_staff_credit_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set STUB_EVENT,    0x04

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Staff Credit
.macro load_staff_credit
    load_staff_credit_labels
    load_game staff_credit_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro staff_credit_event event, args
    game_event staff_credit_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro staff_credit_event00 args
    staff_credit_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro staff_credit_event01 args
    staff_credit_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro staff_credit_event02 args
    staff_credit_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro staff_credit_event03 args
    staff_credit_event 0x03, \args
.endm

@ [Event 0x04] Nothing
.macro staff_credit_stub_event noArgs
    staff_credit_event 0x04, \noArgs
.endm
