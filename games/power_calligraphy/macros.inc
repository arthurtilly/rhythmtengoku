
/* ------------------------ Beatscript Labels: Power Calligraphy ------------------------ */


@ Load Data
.macro load_power_calligraphy_labels
    @ Game Events
    .set SET_KANA,          0x00
    .set SET_KANA_ANIM_CEL, 0x01
    .set OFFSET_PAPER,      0x02
    .set REMOVE_PAPER,      0x03
    .set SET_INPUT_STROKE,  0x04
    .set FINISH_KOKORO2,    0x05
    .set SET_BRUSH,         0x06
    .set CHARGE_BRUSH,      0x07
    .set CHARGE_EFFECT,     0x08
    .set RAISE_BRUSH,       0x09
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

    @ Input Strokes
    .set KANA_INPUT_ONORE1,     0
    .set KANA_INPUT_CHIKARA1,   1
    .set KANA_INPUT_CHIKARA2,   2
    .set KANA_INPUT_SUN1,       3
    .set KANA_INPUT_SUN2,       4
    .set KANA_INPUT_KOKORO1,    5
    .set KANA_INPUT_KOKORO2,    6
    .set KANA_INPUT_KOKORO3,    7
    .set KANA_INPUT_RE1,        8
    .set KANA_INPUT_COMMA1,     9
    .set KANA_INPUT_FACE1,      10

    @ Brush States (Animation Cels)
    .set BRUSH_RAISED,  0
    .set BRUSH_DOWN,    1

    @ Brush Charge Types
    .set CHARGE_STROKE, 0
    .set CHARGE_COMMA,  1

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


@ [Event 0x01] Set Kana Current Animation Cel
.macro power_calligraphy_set_kana_cel cel
    power_calligraphy_event SET_KANA_ANIM_CEL, \cel
.endm


@ [Event 0x02] Offset Paper
.macro power_calligraphy_offset_paper x, y
    power_calligraphy_event OFFSET_PAPER, (\x & 0xFF) | ((\y & 0xFF) << 8)
.endm


@ [Event 0x03] Remove Paper
.macro power_calligraphy_remove_paper
    power_calligraphy_event REMOVE_PAPER, FALSE
.endm

.macro power_calligraphy_remove_paper_slowly
    power_calligraphy_event REMOVE_PAPER, TRUE
.endm


@ [Event 0x04] Set Next Input Stroke Type
.macro power_calligraphy_set_next_input inputStrokeType
    power_calligraphy_event SET_INPUT_STROKE, \inputStrokeType
.endm


@ [Event 0x05] Finish KANA_INPUT_KOKORO2 (unused)
.macro power_calligraphy_finish_input_kokoro2
    power_calligraphy_event FINISH_KOKORO2, 0
.endm


@ [Event 0x06] Set Brush Position & Animation Cel
.macro power_calligraphy_set_brush x, y, cel
    power_calligraphy_event SET_BRUSH, (\x & 0xFF) | ((\y & 0xFF) << 8) | ((\cel & 0xFF) << 16)
.endm

.macro power_calligraphy_set_brush_raised x, y
    power_calligraphy_set_brush (\x), (\y), BRUSH_RAISED
.endm

.macro power_calligraphy_set_brush_down x, y
    power_calligraphy_set_brush (\x), (\y), BRUSH_DOWN
.endm


@ [Event 0x07] Charge Brush
.macro power_calligraphy_charge_brush
    power_calligraphy_event CHARGE_BRUSH, CHARGE_STROKE
.endm
.macro power_calligraphy_charge_brush_comma
    power_calligraphy_event CHARGE_BRUSH, CHARGE_COMMA
.endm


@ [Event 0x08] Start/Stop Charge Effect
.macro power_calligraphy_start_charge_effect
    power_calligraphy_event CHARGE_EFFECT, TRUE
.endm

.macro power_calligraphy_end_charge_effect
    power_calligraphy_event CHARGE_EFFECT, FALSE
.endm


@ [Event 0x09] Raise Brush (only used with the SUN kana)
.macro power_calligraphy_raise_brush
    power_calligraphy_event RAISE_BRUSH, 0
.endm


@ [Event 0x0A] Play Ink Dot Charge Effect (Unused)
.macro power_calligraphy_play_ink_orbit_effect ticks
    power_calligraphy_event START_INK_ORBIT, \ticks
.endm


@ [Event 0x0B] Set Little People State
.macro power_calligraphy_set_people_state state
    power_calligraphy_event SET_PEOPLE_STATE, \state
.endm


@ [Event 0x0C] Set Little People Position
.macro power_calligraphy_set_people_pos pos
    power_calligraphy_event SET_PEOPLE_POS, \pos
.endm
