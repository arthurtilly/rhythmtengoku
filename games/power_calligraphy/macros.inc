
/* ------------------------ Beatscript Labels: Power Calligraphy ------------------------ */


@ Load Data
.macro load_power_calligraphy_labels
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
    load_power_calligraphy_labels
    load_game power_calligraphy_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro power_calligraphy_event event, args
    game_event power_calligraphy_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro power_calligraphy_event00 args
    power_calligraphy_event EVENT_00, \args
.endm

@ [Event 0x01] ?
.macro power_calligraphy_event01 args
    power_calligraphy_event EVENT_01, \args
.endm

@ [Event 0x02] ?
.macro power_calligraphy_event02 args
    power_calligraphy_event EVENT_02, \args
.endm

@ [Event 0x03] ?
.macro power_calligraphy_event03 args
    power_calligraphy_event EVENT_03, \args
.endm

@ [Event 0x04] ?
.macro power_calligraphy_event04 args
    power_calligraphy_event EVENT_04, \args
.endm

@ [Event 0x05] ?
.macro power_calligraphy_event05 args
    power_calligraphy_event EVENT_05, \args
.endm

@ [Event 0x06] ?
.macro power_calligraphy_event06 args
    power_calligraphy_event EVENT_06, \args
.endm

@ [Event 0x07] ?
.macro power_calligraphy_event07 args
    power_calligraphy_event EVENT_07, \args
.endm

@ [Event 0x08] ?
.macro power_calligraphy_event08 args
    power_calligraphy_event EVENT_08, \args
.endm

@ [Event 0x09] ?
.macro power_calligraphy_event09 args
    power_calligraphy_event EVENT_09, \args
.endm

@ [Event 0x0A] ?
.macro power_calligraphy_event0A args
    power_calligraphy_event EVENT_0A, \args
.endm

@ [Event 0x0B] ?
.macro power_calligraphy_event0B args
    power_calligraphy_event EVENT_0B, \args
.endm

@ [Event 0x0C] ?
.macro power_calligraphy_event0C args
    power_calligraphy_event EVENT_0C, \args
.endm
