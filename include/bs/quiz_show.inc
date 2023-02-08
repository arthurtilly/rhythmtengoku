
/* ------------------------ BeatScript Labels: Quiz Show ------------------------ */


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
    .set STUB_EVENT,    0x11

    @ Cues
    .set CUE_DEFAULT, 0x00

    @ Quiz Host Buttons
    .set HOST_BUTTON_R, 0
    .set HOST_BUTTON_L, 1
.endm


@ Load Game: Quiz Show
.macro load_quiz_show
    load_quiz_show_labels
    load_game QUIZ_SHOW, 0
.endm

@ Load Game: Quiz Show (Endless)
.macro load_quiz_show_endless
    load_quiz_show_labels
    load_game QUIZ_SHOW, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro quiz_show_event event, args
    game_event QUIZ_SHOW, \event, \args
.endm


@ [Event 0x00] ?
.macro qz_event00 args
    quiz_show_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro qz_event01 args
    quiz_show_event 0x01, \args
.endm

@ [Event 0x02] Host Press Button?
.macro qz_event02 args
    quiz_show_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro qz_event03 args
    quiz_show_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro qz_event04 args
    quiz_show_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro qz_event05 args
    quiz_show_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro qz_event06 args
    quiz_show_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro qz_event07 args
    quiz_show_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro qz_event08 args
    quiz_show_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro qz_event09 args
    quiz_show_event 0x09, \args
.endm

@ [Event 0x0A] ?
.macro qz_event0A args
    quiz_show_event 0x0A, \args
.endm

@ [Event 0x0B] ?
.macro qz_event0B args
    quiz_show_event 0x0B, \args
.endm

@ [Event 0x0C] ?
.macro qz_event0C args
    quiz_show_event 0x0C, \args
.endm

@ [Event 0x0D] ?
.macro qz_event0D args
    quiz_show_event 0x0D, \args
.endm

@ [Event 0x0E] ?
.macro qz_event0E args
    quiz_show_event 0x0E, \args
.endm

@ [Event 0x0F] ?
.macro qz_event0F args
    quiz_show_event 0x0F, \args
.endm

@ [Event 0x10] ?
.macro qz_event10 args
    quiz_show_event 0x10, \args
.endm

@ [Event 0x11] Nothing
.macro qz_stub_event noArgs
    quiz_show_event 0x11, \noArgs
.endm
