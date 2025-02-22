
/* ------------------------ Beatscript Labels: Bouncy Road ------------------------ */


@ Load Data
.macro load_bouncy_road_labels
    @ Game Events
    .set DEPLOY_BALL,               0x00
    .set BOUNCE_BALL,               0x01
    .set ENABLE_BALL_GOAL_SFX,      0x02
    .set PLAY_DISTANT_BOUNCE_SFX,   0x03
    .set SET_BALL_PALETTE,          0x04
    .set SET_BOUNCE_HEIGHT,         0x05

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Bouncy Road
.macro load_bouncy_road
    load_bouncy_road_labels
    load_game bouncy_road_engine, 0
.endm

@ Load Game: Bouncy Road (Remix 5)
.macro load_bouncy_road_remix_5
    load_bouncy_road_labels
    load_game bouncy_road_engine, 1
.endm

@ Load Game: Bouncy Road 2
.macro load_bouncy_road_2
    load_bouncy_road_labels
    load_game bouncy_road_engine, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bouncy_road_event event, args
    game_event bouncy_road_engine, \event, \args
.endm


@ [Event 0x00] Deploy Ball (set time between bounces)
.macro bouncy_road_deploy_ball bounceInterval
    bouncy_road_event DEPLOY_BALL, \bounceInterval
.endm


@ [Event 0x01] Bounce Ball
.macro bouncy_road_bounce_ball_sync ballID
    bouncy_road_event BOUNCE_BALL, \ballID
.endm


@ [Event 0x02] Enable Goal SFX For This Ball
.macro bouncy_road_enable_ball_goal_sfx
    bouncy_road_event ENABLE_BALL_GOAL_SFX, 0
.endm


@ [Event 0x03] Play Distance Ball Bounce ("Tonk") SFX
.macro bouncy_road_play_distant_bounce_sfx
    bouncy_road_event PLAY_DISTANT_BOUNCE_SFX, 0
.endm


@ [Event 0x04] Set Palette For This Ball
.macro bouncy_road_set_ball_palette paletteID
    bouncy_road_event SET_BALL_PALETTE, \paletteID
.endm


@ [Event 0x05] Set Global Bounce Height (default = 0x100)
.macro bouncy_road_set_bounce_height multiplier
    bouncy_road_event SET_BOUNCE_HEIGHT, \multiplier
.endm
