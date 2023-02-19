
/* ------------------------ Beatscript Labels: Sneaky Spirits ------------------------ */


@ Load Data
.macro load_sneaky_spirits_labels
    @ Game Events
    .set SHOW_GHOST,                0x00
    .set SET_GHOST_HEIGHT,          0x01
    .set SPAWN_BOW,                 0x02
    .set DRAW_BOW,                  0x03
    .set ENABLE_WIND_SFX,           0x04
    .set PRINT_TEXT,                0x05
    .set SET_RAIN_SPEED,            0x06
    .set FREEZE_SLOW_RAIN,          0x07
    .set SHOW_TUTORIAL_GHOST,       0x08
    .set SET_TUTORIAL_GHOST_FRAME,  0x09
    .set STUB_EVENT,                0x0A

    @ Cues
    .set CUE_STRICT,    0x00
    .set CUE_NORMAL,    0x01
    .set CUE_LENIENT,   0x02
    .set CUE_TUTORIAL,  0x03

    @ [Event 0x06] Rain Speeds
    .set NORMAL_SPEED,  0
    .set SLOW_MOTION,   1
.endm


@ Load Game: Sneaky Spirits
.macro load_sneaky_spirits
    load_sneaky_spirits_labels
    load_game sneaky_spirits_engine, 0
.endm

@ Load Game: Sneaky Spirits (Remix 2)
.macro load_sneaky_spirits_remix_2
    load_sneaky_spirits_labels
    load_game sneaky_spirits_engine, 1
.endm

@ Load Game: Sneaky Spirits 2
.macro load_sneaky_spirits_2
    load_sneaky_spirits_labels
    load_game sneaky_spirits_engine, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro sneaky_spirits_event event, args
    game_event sneaky_spirits_engine, \event, \args
.endm


@ [Event 0x00] Show Ghost (at given horizontal position)
.macro sneaky_spirits_show_ghost pos
    sneaky_spirits_event 0x00, \pos
.endm

@ [Event 0x01] Set Ghost Appearance Height (default = 0x100)
.macro sneaky_spirits_set_ghost_height multiplier
    sneaky_spirits_event 0x01, \multiplier
.endm

@ [Event 0x02] Spawn Bow
.macro sneaky_spirits_spawn_bow noArgs
    sneaky_spirits_event 0x02, \noArgs
.endm

@ [Event 0x03] Draw Bow
.macro sneaky_spirits_draw_bow noArgs
    sneaky_spirits_event 0x03, \noArgs
.endm

@ [Event 0x04] Enable Wind/Rain Ambience
.macro sneaky_spirits_enable_wind_sfx enable
    sneaky_spirits_event 0x04, \enable
.endm

@ [Event 0x05] Print Text
.macro sneaky_spirits_print_text string
    sneaky_spirits_event 0x05, \string
.endm

@ [Event 0x06] Set Rain Speed (Normal/Slow-Motion)
.macro sneaky_spirits_set_rain_speed speed
    sneaky_spirits_event 0x06, \speed
.endm

@ [Event 0x07] Freeze Slow-Motion Rain
.macro sneaky_spirits_freeze_slow_rain enable
    sneaky_spirits_event 0x07, \enable
.endm

@ [Event 0x08] Display Tutorial Ghost Sprite
.macro sneaky_spirits_show_tutorial_ghost show
    sneaky_spirits_event 0x08, \show
.endm

@ [Event 0x09] Set Animation Frame for Tutorial Ghost Sprite
.macro sneaky_spirits_set_tutorial_ghost_frame frame
    sneaky_spirits_event 0x09, \frame
.endm

@ [Event 0x0A] Nothing
.macro sneaky_spirits_stub_event noArgs
    sneaky_spirits_event 0x0A, \noArgs
.endm
