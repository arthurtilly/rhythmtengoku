
/* ------------------------ Beatscript Labels: Ninja Bodyguard ------------------------ */


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
    .set EVENT_10,      0x10
    .set EVENT_11,      0x11

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Ninja Bodyguard
.macro load_ninja_bodyguard
    load_ninja_labels
    load_game ninja_bodyguard_engine, 0
.endm

@ Load Game: Ninja Reincarnate
.macro load_ninja_reincarnate
    load_ninja_labels
    load_game ninja_bodyguard_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro ninja_bodyguard_event event, args
    game_event ninja_bodyguard_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro ninja_bodyguard_event00 args
    ninja_bodyguard_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro ninja_bodyguard_event01
    ninja_bodyguard_event EVENT_01, 0
.endm


@ [Event 0x02] ?
.macro ninja_bodyguard_event02
    ninja_bodyguard_event EVENT_02, 0
.endm


@ [Event 0x03] ?
.macro ninja_bodyguard_event03
    ninja_bodyguard_event EVENT_03, 0
.endm


@ [Event 0x04] ?
.macro ninja_bodyguard_event04
    ninja_bodyguard_event EVENT_04, 0
.endm


@ [Event 0x05] ?
.macro ninja_bodyguard_event05
    ninja_bodyguard_event EVENT_05, 0
.endm


@ [Event 0x06] ?
.macro ninja_bodyguard_event06
    ninja_bodyguard_event EVENT_06, 0
.endm


@ [Event 0x07] ?
.macro ninja_bodyguard_event07 args
    ninja_bodyguard_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro ninja_bodyguard_event08
    ninja_bodyguard_event EVENT_08, 0
.endm


@ [Event 0x09] ?
.macro ninja_bodyguard_event09 args
    ninja_bodyguard_event EVENT_09, \args
.endm


@ [Event 0x0A] ?
.macro ninja_bodyguard_event0A
    ninja_bodyguard_event EVENT_0A, 0
.endm


@ [Event 0x0B] ?
.macro ninja_bodyguard_event0B args
    ninja_bodyguard_event EVENT_0B, \args
.endm


@ [Event 0x0C] ?
.macro ninja_bodyguard_event0C
    ninja_bodyguard_event EVENT_0C, 0
.endm


@ [Event 0x0D] ?
.macro ninja_bodyguard_event0D args
    ninja_bodyguard_event EVENT_0D, \args
.endm


@ [Event 0x0E] ?
.macro ninja_bodyguard_event0E args
    ninja_bodyguard_event EVENT_0E, \args
.endm


@ [Event 0x0F] ?
.macro ninja_bodyguard_event0F args
    ninja_bodyguard_event EVENT_0F, \args
.endm


@ [Event 0x10] ?
.macro ninja_bodyguard_event10 args
    ninja_bodyguard_event EVENT_10, \args
.endm


@ [Event 0x11] ?
.macro ninja_bodyguard_event11 args
    ninja_bodyguard_event EVENT_11, \args
.endm
