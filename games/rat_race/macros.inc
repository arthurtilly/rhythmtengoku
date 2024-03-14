
/* ------------------------ Beatscript Labels: Rat Race ------------------------ */


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
.macro load_rat_race_practice
    load_rat_race_labels
    load_game rat_race_engine, 0
.endm

@ Load Game: Rat Race (Remix 2, Remix 6, Remix 8)
.macro load_rat_race
    load_rat_race_labels
    load_game rat_race_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rat_race_event event, args
    game_event rat_race_engine, \event, \args
.endm


@ [Event 0x00] Nothing
.macro rat_race_stub_event
    rat_race_event STUB_EVENT, 0
.endm


@ [Event 0x01] ?
.macro rat_race_event01 args
    rat_race_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro rat_race_event02 args
    rat_race_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro rat_race_event03 args
    rat_race_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro rat_race_event04 args
    rat_race_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro rat_race_event05 args
    rat_race_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro rat_race_event06 args
    rat_race_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro rat_race_event07 args
    rat_race_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro rat_race_event08
    rat_race_event EVENT_08, 0
.endm


@ [Event 0x09] ?
.macro rat_race_event09 args
    rat_race_event EVENT_09, \args
.endm


@ [Event 0x0A] ?
.macro rat_race_event0A
    rat_race_event EVENT_0A, 0
.endm


@ [Event 0x0B] ?
.macro rat_race_event0B
    rat_race_event EVENT_0B, 0
.endm


@ [Event 0x0C] ?
.macro rat_race_event0C
    rat_race_event EVENT_0C, 0
.endm


@ [Event 0x0D] ?
.macro rat_race_event0D args
    rat_race_event EVENT_0D, \args
.endm


@ [Event 0x0E] ?
.macro rat_race_event0E args
    rat_race_event EVENT_0E, \args
.endm


@ [Event 0x0F] ?
.macro rat_race_event0F
    rat_race_event EVENT_0F, 0
.endm


@ [Event 0x10] ?
.macro rat_race_event10 args
    rat_race_event EVENT_10, \args
.endm


@ [Event 0x11] ?
.macro rat_race_event11
    rat_race_event EVENT_11, 0
.endm


@ [Event 0x12] ?
.macro rat_race_event12
    rat_race_event EVENT_12, 0
.endm
