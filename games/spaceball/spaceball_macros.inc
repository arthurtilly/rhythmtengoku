
/* ------------------------ BeatScript Labels: Spaceball ------------------------ */


@ Load Data
.macro load_spaceball_labels
    @ Game Events
    .set PREPARE_PITCHER,       0x00
    .set EXIT_LOOP_IF_NO_MISS,  0x01
    .set ZOOM_CAMERA,           0x02
    .set SET_BATTER_SPRITE,     0x03
    .set SET_UFO_ANIM,          0x04
    .set SET_BALL_SPRITE,       0x05
    .set STUB_EVENT,            0x06

    @ Cues
    .set CUE_LOW_F,     0x00
    .set CUE_LOW,       0x01
    .set CUE_HIGH,      0x02
    .set CUE_HIGH_F,    0x03

    @ [Event 0x03] Batter Sprites
    .set BATTER_GREEN,  0
    .set BATTER_RED,    1
    .set BATTER_PINK,   2

    @ [Event 0x04] Umpire Animations
    .set UFO_OPEN,  0
    .set UFO_SWAY,  1

    @ [Event 0x05] Ball Sprites
    .set BASEBALL,  0
    .set RICE_BALL, 1
    .set STAR_BALL, 2
.endm


@ Load Game: Spaceball
.macro load_spaceball
    load_spaceball_labels
    load_game SPACEBALL, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro spaceball_event event, args
    game_event SPACEBALL, \event, \args
.endm


@ [Event 0x00] Prepare Pitcher for Next Ball
.macro spb_prep_pitcher noArgs
    spaceball_event 0x00, \noArgs
.endm

@ [Event 0x01] Exit Tutorial Loop if No Miss
.macro spb_exit_loop_if_no_miss noArgs
    spaceball_event 0x01, \noArgs
.endm

@ [Event 0x02] Set Camera Zoom
.macro spb_zoom_camera zoom, time
    spaceball_event 0x02, (((\zoom) << 16) | ((\time) & 0xFFFF))
.endm

@ [Event 0x03] Set Batter Sprite
.macro spb_set_batter_sprite type
    spaceball_event 0x03, \type
.endm

@ [Event 0x04] Set Umpire Animation
.macro spb_set_ufo_anim anim
    spaceball_event 0x04, \anim
.endm

@ [Event 0x05] Set Ball Sprite (applies to all balls after this command)
.macro spb_set_ball_sprite type
    spaceball_event 0x05, \type
.endm

@ [Event 0x06] Nothing
.macro spb_stub_event noArgs
    spaceball_event 0x06, \noArgs
.endm
