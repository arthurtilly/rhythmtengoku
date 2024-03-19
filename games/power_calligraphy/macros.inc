
/* ------------------------ Beatscript Labels: Power Calligraphy ------------------------ */


@ Load Data
.macro load_power_calligraphy_labels
    @ Game Events
    .set SET_KANA,          0x00
    .set EVENT_01,          0x01
    .set EVENT_02,          0x02
    .set EVENT_03,          0x03
    .set EVENT_04,          0x04
    .set EVENT_05,          0x05
    .set SET_BRUSH,         0x06
    .set EVENT_07,          0x07
    .set EVENT_08,          0x08
    .set EVENT_09,          0x09
    .set START_INK_ORBIT,   0x0A
    .set SET_PEOPLE_STATE,  0x0B
    .set SET_PEOPLE_POS,    0x0C

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

    @ Little People States
    .set LITTLE_PEOPLE_NULL,    0
    .set LITTLE_PEOPLE_DANCE,   1
    .set LITTLE_PEOPLE_STUMBLE, 2
    .set LITTLE_PEOPLE_BOW,     3
    .set LITTLE_PEOPLE_END_BOW, 4
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


@ [Event 0x00] Set Kana
.macro power_calligraphy_set_kana kana
    power_calligraphy_event SET_KANA, \kana
.endm


@ [Event 0x01] ?
.macro power_calligraphy_event01 args
    power_calligraphy_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro power_calligraphy_event02 arg1, arg2
    power_calligraphy_event EVENT_02, ((\arg1 & 0xFF) << 8) | (\arg2 & 0xFF)
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


@ [Event 0x06] Set Brush Position & Animation Cel
.macro power_calligraphy_set_brush x, y, cel
    power_calligraphy_event SET_BRUSH, (\x & 0xFF) | ((\y & 0xFF) << 8) | ((\cel & 0xFF) << 16)
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
.macro power_calligraphy_event09
    power_calligraphy_event EVENT_09, 0
.endm


@ [Event 0x0A] Start Ink Dot Charge Effect
.macro power_calligraphy_start_ink_orbit_effect ticks
    power_calligraphy_event START_INK_ORBIT, \ticks
.endm


@ [Event 0x0B] Set Little People State
.macro power_calligraphy_set_people_state LITTLE_PEOPLE_END_BOW state
    power_calligraphy_event SET_PEOPLE_STATE, \state
.endm


@ [Event 0x0C] Set Little People Position
.macro power_calligraphy_set_people_pos LITTLE_PEOPLE_END_BOW pos
    power_calligraphy_event SET_PEOPLE_POS, \pos
.endm
