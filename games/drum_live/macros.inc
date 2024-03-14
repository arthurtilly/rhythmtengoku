
/* ------------------------ Beatscript Labels: Drum LIVE ------------------------ */


@ Load Data
.macro load_drum_live_labels
    @ Game Events
    .set SET_GUITARIST_NEXT_STATE,  0x00
    .set EVENT_01,      0x01
    .set CLEAR_INPUT_DEF,       0x02
    .set DEFINE_COOL_INPUTS,    0x03
    .set DEFINE_LAME_INPUTS,    0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set EVENT_07,      0x07
    .set SET_ENABLE_BOREDOM,        0x08
    .set SET_DISABLE_EXCITEMENT,    0x09

    @ Cues
    .set CUE_LIVE_00,    0x00
    .set CUE_LIVE_01,    0x01
    .set CUE_LIVE_02,    0x02
    .set CUE_LIVE_03,    0x03
    .set CUE_LIVE_04,    0x04
    .set CUE_LIVE_05,    0x05

    @ Versions
    .set ENGINE_VER_DRUM_GIRLS_LIVE,    0
    .set ENGINE_VER_DRUM_BOYS_LIVE,     1
    .set ENGINE_VER_DRUM_BAND_LIVE,     2
.endm


@ Load Game: Drum Girls LIVE
.macro load_drum_girls_live
    load_drum_live_labels
    load_game drum_live_engine, 0
.endm

@ Load Game: Drum Boys LIVE
.macro load_drum_boys_live
    load_drum_live_labels
    load_game drum_live_engine, 1
.endm

@ Load Game: Drum Samurai's Band LIVE
.macro load_drum_samurai_band_live
    load_drum_live_labels
    load_game drum_live_engine, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro drum_live_event event, args
    game_event drum_live_engine, \event, \args
.endm


@ [Event 0x00] Set Guitarist Next State
.macro dml_set_guitarist_next_state mask, state
    drum_live_event SET_GUITARIST_NEXT_STATE, (((\state) << 2) | ((\mask) & 3))
.endm


@ [Event 0x01] ?
.macro dml_event01 args
    drum_live_event EVENT_01, \args
.endm


@ [Event 0x02] Clear "Cool"/"Lame" Input Definitions
.macro dml_clear_input_def
    drum_live_event CLEAR_INPUT_DEF, 0
.endm


@ [Event 0x03] Define "Cool" Inputs
.macro dml_define_cool_inputs index, keys
    drum_live_event DEFINE_COOL_INPUTS, (((\keys) << 8) | ((\index) & 0xFF))
.endm


@ [Event 0x04] Define "Lame" Inputs
.macro dml_define_lame_inputs index, keys
    drum_live_event DEFINE_LAME_INPUTS, (((\keys) << 8) | ((\index) & 0xFF))
.endm


@ [Event 0x05] ?
.macro dml_event05 args
    drum_live_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro dml_event06 args
    drum_live_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro dml_event07
    drum_live_event EVENT_07, 0
.endm


@ [Event 0x08] Set Enable Boredom Timer
.macro dml_set_enable_boredom enable
    drum_live_event SET_ENABLE_BOREDOM, \enable
.endm


@ [Event 0x09] Set Disable Excitement Changes
.macro dml_set_disable_excitement args
    drum_live_event SET_DISABLE_EXCITEMENT, \args
.endm



/* ------------------------ Beatscript Labels: Drum LIVE (Menu) ------------------------ */


@ Load Data
.macro load_drum_live_menu_labels
    @ Game Events
    .set FREEZE_SCENE,      0x00
.endm


@ Load Game: Drum LIVE Menu
.macro load_drum_live_menu
    load_drum_live_menu_labels
    load_game drum_live_menu_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro drum_live_menu_event event, args
    game_event drum_live_menu_engine, \event, \args
.endm


@ [Event 0x00] Freeze Scene
.macro drum_live_menu_freeze_scene
    drum_live_menu_event FREEZE_SCENE, 0
.endm
