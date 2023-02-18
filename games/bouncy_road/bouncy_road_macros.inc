
/* ------------------------ BeatScript Labels: Bouncy Road ------------------------ */


@ Load Data
.macro load_bouncy_road_labels
    @ Game Events
    .set DEPLOY_BALL,               0x00
    .set BOUNCE_BALL,               0x01
    .set ENABLE_BALL_GOAL_SFX,      0x02
    .set PLAY_DISTANT_BOUNCE_SFX,   0x03
    .set SET_BALL_PALETTE,          0x04
    .set SET_BOUNCE_HEIGHT,         0x05
    .set STUB_EVENT,                0x06

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Bouncy Road
.macro load_bouncy_road
    load_bouncy_road_labels
    load_game BOUNCY_ROAD, 0
.endm

@ Load Game: Bouncy Road (Remix 5)
.macro load_bouncy_road_remix5
    load_bouncy_road_labels
    load_game BOUNCY_ROAD, 1
.endm

@ Load Game: Bouncy Road 2
.macro load_bouncy_road_2
    load_bouncy_road_labels
    load_game BOUNCY_ROAD, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bouncy_road_event event, args
    game_event BOUNCY_ROAD, \event, \args
.endm


@ [Event 0x00] Deploy Ball (set time between bounces)
.macro br_deploy_ball bounceInterval
    bouncy_road_event 0x00, \bounceInterval
.endm

@ [Event 0x01] Bounce Ball
.macro br_bounce_ball ballID
    bouncy_road_event 0x01, \ballID
.endm

@ [Event 0x02] Enable Goal SFX For This Ball
.macro br_enable_ball_goal_sfx noArgs
    bouncy_road_event 0x02, \noArgs
.endm

@ [Event 0x03] Play Distance Ball Bounce ("Tonk") SFX
.macro br_play_distant_bounce_sfx noArgs
    bouncy_road_event 0x03, \noArgs
.endm

@ [Event 0x04] Set Palette For This Ball
.macro br_set_ball_palette paletteID
    bouncy_road_event 0x04, \paletteID
.endm

@ [Event 0x05] Set Global Bounce Height (default = 0x100)
.macro br_set_bounce_height multiplier
    bouncy_road_event 0x05, \multiplier
.endm

@ [Event 0x06] Nothing
.macro br_stub_event noArgs
    bouncy_road_event 0x06, \noArgs
.endm
