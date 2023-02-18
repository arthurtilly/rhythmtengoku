
/* ------------------------ BeatScript Labels: Ninja Bodyguard ------------------------ */


@ Load Data
.macro load_ninja_labels
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
    .set EVENT_0E,      0x10
    .set EVENT_0F,      0x11
    .set STUB_EVENT,    0x12

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Ninja Bodyguard
.macro load_ninja_bodyguard
    load_ninja_labels
    load_game NINJA_BODYGUARD, 0
.endm

@ Load Game: Ninja Bodyguard 2 (+ Remix 5)
.macro load_ninja_reincarnate
    load_ninja_labels
    load_game NINJA_BODYGUARD, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro ninja_event event, args
    game_event NINJA_BODYGUARD, \event, \args
.endm


@ [Event 0x00] ?
.macro nj_event00 args
    ninja_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro nj_event01 args
    ninja_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro nj_event02 args
    ninja_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro nj_event03 args
    ninja_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro nj_event04 args
    ninja_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro nj_event05 args
    ninja_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro nj_event06 args
    ninja_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro nj_event07 args
    ninja_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro nj_event08 args
    ninja_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro nj_event09 args
    ninja_event 0x09, \args
.endm

@ [Event 0x0A] ?
.macro nj_event0A args
    ninja_event 0x0A, \args
.endm

@ [Event 0x0B] ?
.macro nj_event0B args
    ninja_event 0x0B, \args
.endm

@ [Event 0x0C] ?
.macro nj_event0C args
    ninja_event 0x0C, \args
.endm

@ [Event 0x0D] ?
.macro nj_event0D args
    ninja_event 0x0D, \args
.endm

@ [Event 0x0E] ?
.macro nj_event0E args
    ninja_event 0x0E, \args
.endm

@ [Event 0x0F] ?
.macro nj_event0F args
    ninja_event 0x0F, \args
.endm

@ [Event 0x10] ?
.macro nj_event10 args
    ninja_event 0x10, \args
.endm

@ [Event 0x11] ?
.macro nj_event11 args
    ninja_event 0x11, \args
.endm

@ [Event 0x12] Nothing
.macro nj_stub_event noArgs
    ninja_event 0x12, \noArgs
.endm
