
/* ------------------------ Beatscript Labels: Drum LIVE ------------------------ */


@ Load Data
.macro load_drum_live_labels
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

    @ Cues
    .set CUE_LIVE_00,    0x00
    .set CUE_LIVE_01,    0x01
    .set CUE_LIVE_02,    0x02
    .set CUE_LIVE_03,    0x03
    .set CUE_LIVE_04,    0x04
    .set CUE_LIVE_05,    0x05
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


@ [Event 0x00] ?
.macro dml_event00 args
    drum_live_event EVENT_00, \args
.endm

@ [Event 0x01] ?
.macro dml_event01 args
    drum_live_event EVENT_01, \args
.endm

@ [Event 0x02] ?
.macro dml_event02 args
    drum_live_event EVENT_02, \args
.endm

@ [Event 0x03] ?
.macro dml_event03 args
    drum_live_event EVENT_03, \args
.endm

@ [Event 0x04] ?
.macro dml_event04 args
    drum_live_event EVENT_04, \args
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
.macro dml_event07 args
    drum_live_event EVENT_07, \args
.endm

@ [Event 0x08] ?
.macro dml_event08 args
    drum_live_event EVENT_08, \args
.endm

@ [Event 0x09] ?
.macro dml_event09 args
    drum_live_event EVENT_09, \args
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
