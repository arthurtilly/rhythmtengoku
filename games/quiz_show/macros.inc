
/* ------------------------ Beatscript Labels: Quiz Show ------------------------ */


@ Load Data
.macro load_quiz_show_labels
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
    .set EVENT_0A,      0x0A
    .set EVENT_0B,      0x0B
    .set EVENT_0C,      0x0C
    .set EVENT_0D,      0x0D
    .set EVENT_0E,      0x0E
    .set EVENT_0F,      0x0F
    .set EVENT_10,      0x10

    @ Cues
    .set CUE_DEFAULT, 0x00

    @ Quiz Host Buttons
    .set HOST_BUTTON_R, 0
    .set HOST_BUTTON_L, 1
.endm


@ Load Game: Quiz Show
.macro load_quiz_show
    load_quiz_show_labels
    load_game quiz_show_engine, 0
.endm

@ Load Game: Quiz Show (Endless)
.macro load_quiz_show_endless
    load_quiz_show_labels
    load_game quiz_show_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro quiz_show_event event, args
    game_event quiz_show_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro quiz_show_event00 args
    quiz_show_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro quiz_show_event01 args
    quiz_show_event EVENT_01, \args
.endm


@ [Event 0x02] Host Press Button?
.macro quiz_show_event02 args
    quiz_show_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro quiz_show_event03 args
    quiz_show_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro quiz_show_event04
    quiz_show_event EVENT_04, 0
.endm


@ [Event 0x05] ?
.macro quiz_show_event05 args
    quiz_show_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro quiz_show_event06 args
    quiz_show_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro quiz_show_event07 args
    quiz_show_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro quiz_show_event08
    quiz_show_event EVENT_08, 0
.endm


@ [Event 0x09] ?
.macro quiz_show_event09
    quiz_show_event EVENT_09, 0
.endm


@ [Event 0x0A] ?
.macro quiz_show_event0A
    quiz_show_event EVENT_0A, 0
.endm


@ [Event 0x0B] ?
.macro quiz_show_event0B args
    quiz_show_event EVENT_0B, \args
.endm


@ [Event 0x0C] ?
.macro quiz_show_event0C args
    quiz_show_event EVENT_0C, \args
.endm


@ [Event 0x0D] ?
.macro quiz_show_event0D args
    quiz_show_event EVENT_0D, \args
.endm


@ [Event 0x0E] ?
.macro quiz_show_event0E
    quiz_show_event EVENT_0E, 0
.endm


@ [Event 0x0F] ?
.macro quiz_show_event0F
    quiz_show_event EVENT_0F, 0
.endm


@ [Event 0x10] ?
.macro quiz_show_event10
    quiz_show_event EVENT_10, 0
.endm
