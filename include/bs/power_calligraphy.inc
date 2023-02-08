
/* ------------------------ BeatScript Labels: Power Calligraphy ------------------------ */


@ Load Data
.macro load_calligraphy_labels
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
    .set STUB_EVENT,    0x0D

    @ Cues
    .set CUE_DEFAULT, 0x00

    @ Patterns
    .set KANA_ONORE,        0
    .set KANA_CHIKARA,      1
    .set KANA_SUN,          2
    .set KANA_KOKORO,       3
    .set KANA_RE,           4
    .set KANA_COMMA,        5
    .set KANA_FACE,         6
    .set KANA_END_KANJI,    7
.endm


@ Load Game: Power Calligraphy
.macro load_power_calligraphy
    load_calligraphy_labels
    load_game POWER_CALLIGRAPHY, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro calligraphy_event event, args
    game_event POWER_CALLIGRAPHY, \event, \args
.endm


@ [Event 0x00] ?
.macro pc_event00 args
    calligraphy_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro pc_event01 args
    calligraphy_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro pc_event02 args
    calligraphy_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro pc_event03 args
    calligraphy_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro pc_event04 args
    calligraphy_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro pc_event05 args
    calligraphy_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro pc_event06 args
    calligraphy_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro pc_event07 args
    calligraphy_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro pc_event08 args
    calligraphy_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro pc_event09 args
    calligraphy_event 0x09, \args
.endm

@ [Event 0x0A] ?
.macro pc_event0A args
    calligraphy_event 0x0A, \args
.endm

@ [Event 0x0B] ?
.macro pc_event0B args
    calligraphy_event 0x0B, \args
.endm

@ [Event 0x0C] ?
.macro pc_event0C args
    calligraphy_event 0x0C, \args
.endm

@ [Event 0x0D] Nothing
.macro pc_stub_event noArgs
    calligraphy_event 0x0D, \noArgs
.endm
