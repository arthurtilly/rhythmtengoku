
/* ------------------------ Beatscript Labels: Toss Boys ------------------------ */


@ Load Data
.macro load_toss_boys_labels
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

    @ Cues
    .set CUE_TOSS_R,    0x00
    .set CUE_TOSS_B,    0x01
    .set CUE_TOSS_Y,    0x02
    .set CUE_CATCH_R,   0x04
    .set CUE_CATCH_B,   0x05
    .set CUE_CATCH_Y,   0x06
    .set CUE_POP_R,     0x08
    .set CUE_POP_B,     0x09
    .set CUE_POP_Y,     0x0A

    @ Characters
    .set AKA_CHAN,  0
    .set AO_KUN,    1
    .set KII_YAN,   2

    @ Actions
    .set ACTION_TOSS,       0
    .set ACTION_SUPER_TOSS, 1
    .set ACTION_CATCH,      2
    .set ACTION_POP,        3
.endm


@ Load Game: Toss Boys
.macro load_toss_boys
    load_toss_boys_labels
    load_game toss_boys_engine, 0
.endm

@ Load Game: Toss Boys (Remix 5)
.macro load_toss_boys_remix_5
    load_toss_boys_labels
    load_game toss_boys_engine, 1
.endm

@ Load Game: Toss Boys 2
.macro load_toss_boys_2
    load_toss_boys_labels
    load_game toss_boys_engine, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro toss_boys_event event, args
    game_event toss_boys_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro toss_boys_event00
    toss_boys_event EVENT_00, 0
.endm


@ [Event 0x01] ?
.macro toss_boys_event01 args
    toss_boys_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro toss_boys_event02 args
    toss_boys_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro toss_boys_event03 args
    toss_boys_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro toss_boys_event04
    toss_boys_event EVENT_04, 0
.endm


@ [Event 0x05] ?
.macro toss_boys_event05 args
    toss_boys_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro toss_boys_event06 args
    toss_boys_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro toss_boys_event07
    toss_boys_event EVENT_07, 0
.endm


@ [Event 0x08] ?
.macro toss_boys_event08
    toss_boys_event EVENT_08, 0
.endm
