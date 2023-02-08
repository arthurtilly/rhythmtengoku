
/* ------------------------ BeatScript Labels: Marching Orders ------------------------ */


@ Load Data
.macro load_marching_labels
    @ Game Events
    .set EVENT_00,          0x00
    .set EVENT_01,          0x01
    .set EVENT_02,          0x02
    .set EVENT_03,          0x03
    .set EVENT_04,          0x04
    .set PLAY_VOICE_SFX,    0x05
    .set STUB_EVENT,        0x06

    @ Cues
    .set CUE_STEP,          0x00
    .set CUE_TURN_LEFT,     0x01
    .set CUE_TURN_RIGHT,    0x02
    .set CUE_HALT,          0x03

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
    load_marching_labels
    load_game MARCHING_ORDERS, 0
.endm

@ Load Game: Marching Orders (Remix 7, Remix 8)
.macro load_marching_space_rabbits
    load_marching_labels
    load_game MARCHING_ORDERS, 1
.endm

@ Load Game: Marching Orders 2 (Unused)
.macro load_marching_orders_2_unused
    load_marching_labels
    load_game MARCHING_ORDERS, 2
.endm

@ Load Game: Marching Orders 2
.macro load_marching_orders_2
    load_marching_labels
    load_game MARCHING_ORDERS, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro marching_event event, args
    game_event MARCHING_ORDERS, \event, \args
.endm


@ [Event 0x00] ?
.macro mch_event00 args
    marching_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro mch_event01 args
    marching_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro mch_event02 args
    marching_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro mch_event03 args
    marching_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro mch_event04 args
    marching_event 0x04, \args
.endm

@ [Event 0x05] Play Voice SFX
.macro mch_play_voice_sfx id
    marching_event 0x05, \id
.endm

@ [Event 0x06] Nothing
.macro mch_stub_event noArgs
    marching_event 0x06, \noArgs
.endm
