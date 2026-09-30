
/* ------------------------ Beatscript Labels: Marching Orders ------------------------ */


@ Load Data
.macro load_marching_orders_labels
    @ Game Events
    .set PLAY_MARCHER_ACTION,  0x00
    .set PLAY_COMMANDER_ACTION,          0x01
    .set SET_TUTORIAL_ICON,          0x02
    .set ENABLE_CONVEYOR,          0x03
    .set SET_MARCHERS_POINT,          0x04
    .set PLAY_VOICE_SFX,    0x05

    @ Cues
    .set CUE_STEP,          0x00
    .set CUE_TURN_LEFT,     0x01
    .set CUE_TURN_RIGHT,    0x02
    .set CUE_HALT,          0x03

    @ [Event 0x00] Marcher Actions
    .set MARCHER_IDLE, 0
    .set MARCHER_HALT, 1
    .set MARCHER_BEAT, 2
    .set MARCHER_TURN_LEFT, 3
    .set MARCHER_TURN_RIGHT, 4
    .set MARCHER_POINT_LEFT, 5
    .set MARCHER_POINT_RIGHT, 6
    .set MARCHER_STEP_RIGHT, 7
    .set MARCHER_STEP_LEFT, 8
    .set MARCHER_CLAP, 9

    @ [Event 0x01] Commander Actions
    .set COMMANDER_IDLE,   0
    .set COMMANDER_ANGRY,   1
    .set COMMANDER_ANNOYED, 2


    @ [Event 0x02] Tutorial Icons

    .set TUTORIAL_HIDE,       -1
    .set TUTORIAL_YOU,        0
    .set TUTORIAL_A,          1
    .set TUTORIAL_B,          2
    .set TUTORIAL_DPAD_RIGHT, 3
    .set TUTORIAL_DPAD_LEFT,  4


    @ [Event 0x05] Voice Sounds
    .set SHOUT_START,           0
    .set SHOUT_STOP,            1
    .set SHOUT_TURN,            2
    .set VOICE_ATTENTION,       3
    .set VOICE_MARCH,           4
    .set VOICE_HALT,            5
    .set VOICE_RIGHT_FACE,      6
    .set VOICE_RIGHT_FACE_F,    7
    .set VOICE_TURN_RIGHT,      8
    .set VOICE_LEFT_FACE,       9
    .set VOICE_LEFT_FACE_F,     10
    .set VOICE_TURN_LEFT,       11
.endm


@ Load Game: Marching Orders
.macro load_marching_orders
    load_marching_orders_labels
    load_game marching_orders_engine, 0
.endm

@ Load Game: Marching Orders (Remix 7, Remix 8)
.macro load_marching_space_rabbits
    load_marching_orders_labels
    load_game marching_orders_engine, 1
.endm

@ Load Game: Marching Orders 2 (Unused)
.macro load_marching_orders_2_unused
    load_marching_orders_labels
    load_game marching_orders_engine, 2
.endm

@ Load Game: Marching Orders 2
.macro load_marching_orders_2
    load_marching_orders_labels
    load_game marching_orders_engine, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro marching_orders_event event, args
    game_event marching_orders_engine, \event, \args
.endm


@ [Event 0x00] Play Marcher Action
.macro marching_orders_play_marcher_action action, includePlayer
    marching_orders_event PLAY_MARCHER_ACTION, ((\action) | ((\includePlayer) << 8))
.endm


@ [Event 0x01] Commander Idle
.macro marching_orders_reset_commander
    marching_orders_event PLAY_COMMANDER_ACTION, COMMANDER_IDLE
.endm


@ [Event 0x02] Set Tutorial Icon
.macro marching_orders_set_tutorial_icon icon
    marching_orders_event SET_TUTORIAL_ICON, \icon
.endm


@ [Event 0x03] Enable Conveyor
.macro marching_orders_enable_conveyor
    marching_orders_event ENABLE_CONVEYOR, 0
.endm


@ [Event 0x04] Set Marchers Pointing
.macro marching_orders_set_marchers_point enabled
    marching_orders_event SET_MARCHERS_POINT, \enabled
.endm


@ [Event 0x05] Play Voice SFX
.macro marching_orders_play_voice_sfx id
    marching_orders_event PLAY_VOICE_SFX, \id
.endm
