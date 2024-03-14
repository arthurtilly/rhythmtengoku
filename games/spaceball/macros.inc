
/* ------------------------ Beatscript Labels: Spaceball ------------------------ */


@ Load Data
.macro load_spaceball_labels
    @ Game Events
    .set PREPARE_PITCHER,       0x00
    .set EXIT_LOOP_IF_NO_MISS,  0x01
    .set ZOOM_CAMERA,           0x02
    .set SET_BATTER_SPRITE,     0x03
    .set SET_UFO_ANIM,          0x04
    .set SET_BALL_SPRITE,       0x05

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
    load_game spaceball_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro spaceball_event event, args
    game_event spaceball_engine, \event, \args
.endm


@ [Event 0x00] Prepare Pitcher for Next Ball
.macro spaceball_prep_pitcher
    spaceball_event PREPARE_PITCHER, 0
.endm


@ [Event 0x01] Exit Tutorial Loop if No Miss
.macro spaceball_exit_loop_if_no_miss
    spaceball_event EXIT_LOOP_IF_NO_MISS, 0
.endm


@ [Event 0x02] Set Camera Zoom
.macro spaceball_zoom_camera zoom, time
    spaceball_event ZOOM_CAMERA, (((\zoom) << 16) | ((\time) & 0xFFFF))
.endm


@ [Event 0x03] Set Batter Sprite
.macro spaceball_set_batter_sprite type
    spaceball_event SET_BATTER_SPRITE, \type
.endm


@ [Event 0x04] Set Umpire Animation
.macro spaceball_set_ufo_anim anim
    spaceball_event SET_UFO_ANIM, \anim
.endm


@ [Event 0x05] Set Ball Sprite (applies to all balls after this command)
.macro spaceball_set_ball_sprite type
    spaceball_event SET_BALL_SPRITE, \type
.endm
