
/* ------------------------ BeatScript Labels: Rat Race ------------------------ */


@ Load Data
.macro load_rat_race_labels
    @ Game Events
    .set STUB_EVENT,    0x00
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
    .set EVENT_11,      0x11
    .set EVENT_12,      0x12

    @ Cues
    .set CUE_STOP4, 0x00
    .set CUE_STOP2, 0x01
    .set CUE_DASH,  0x03
.endm


@ Load Game: Rat Race
.macro load_rat_race
    load_rat_race_labels
    load_game RAT_RACE, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rat_race_event event, args
    game_event RAT_RACE, \event, \args
.endm


@ [Event 0x00] Nothing
.macro rat_stub_event noArgs
    rat_race_event 0x00, \noArgs
.endm

@ [Event 0x01] ?
.macro rat_event01 args
    rat_race_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro rat_event02 args
    rat_race_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro rat_event03 args
    rat_race_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro rat_event04 args
    rat_race_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro rat_event05 args
    rat_race_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro rat_event06 args
    rat_race_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro rat_event07 args
    rat_race_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro rat_event08 args
    rat_race_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro rat_event09 args
    rat_race_event 0x09, \args
.endm

@ [Event 0x0A] ?
.macro rat_event0A args
    rat_race_event 0x0A, \args
.endm

@ [Event 0x0B] ?
.macro rat_event0B args
    rat_race_event 0x0B, \args
.endm

@ [Event 0x0C] ?
.macro rat_event0C args
    rat_race_event 0x0C, \args
.endm

@ [Event 0x0D] ?
.macro rat_event0D args
    rat_race_event 0x0D, \args
.endm

@ [Event 0x0E] ?
.macro rat_event0E args
    rat_race_event 0x0E, \args
.endm

@ [Event 0x0F] ?
.macro rat_event0F args
    rat_race_event 0x0F, \args
.endm

@ [Event 0x10] ?
.macro rat_event10 args
    rat_race_event 0x10, \args
.endm

@ [Event 0x11] ?
.macro rat_event11 args
    rat_race_event 0x11, \args
.endm

@ [Event 0x12] ?
.macro rat_event12 args
    rat_race_event 0x12, \args
.endm
