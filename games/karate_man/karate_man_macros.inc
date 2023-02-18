
/* ------------------------ BeatScript Labels: Karate Man ------------------------ */


@ Load Data
.macro load_karate_labels
    @ Game Events
    .set RESET_BG_FACE,             0x00
    .set START_SERIOUS_NEXT_HIT,    0x01
    .set STOP_SERIOUS_NEXT_HIT,     0x02
    .set PRINT_TEXTBOX,             0x03
    .set WAIT_AT_TEXTBOX,           0x04
    .set ENABLE_FLOW_METER,         0x05
    .set START_TUTORIAL_LOOP,       0x06
    .set EXIT_LOOP_IF_ALL_HIT,      0x07
    .set USE_THE_FACE,              0x08

    @ Cues
    .set CUE_POT,           0x00
    .set CUE_SOCCER_BALL,   0x01
    .set CUE_POT_STRICT,    0x02
    .set CUE_ROCK,          0x04
    .set CUE_BOMB,          0x05
    .set CUE_LIGHT_BULB,    0x08
.endm


@ Load Game: Karate Man
.macro load_karate_man
    load_karate_labels
    load_game KARATE_MAN, 0
.endm

@ Load Game: Karate Man (Unused Faces)
.macro load_karate_man_unused
    load_karate_labels
    load_game KARATE_MAN, 1
.endm

@ Load Game: Karate Man (Start with Serious Mode Active)
.macro load_karate_man_serious
    load_karate_labels
    load_game KARATE_MAN, 2
.endm

@ Load Game: Karate Man 2
.macro load_karate_man_2
    load_karate_labels
    load_game KARATE_MAN, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro karate_event event, args
    game_event KARATE_MAN, \event, \args
.endm


@ [Event 0x00] Reset BG Face
.macro kt_reset_bg_face noArgs
    karate_event 0x00, \noArgs
.endm

@ [Event 0x01] Start "Serious Mode" on Next Hit
.macro kt_start_serious_next_hit noArgs
    karate_event 0x01, \noArgs
.endm

@ [Event 0x02] Finish "Serious Mode" on Next Hit
.macro kt_stop_serious_next_hit noArgs
    karate_event 0x02, \noArgs
.endm

@ [Event 0x03] Print Textbox
.macro kt_print_textbox string
    karate_event 0x03, \string
.endm

@ [Event 0x04] Wait at Textbox for Player Input
.macro kt_wait_at_textbox noArgs
    karate_event 0x04, \noArgs
.endm

@ [Event 0x05] Enable Flow Meter
.macro kt_enable_flow enable
    karate_event 0x05, \enable
.endm

@ [Event 0x06] Start Tutorial Loop (set required inputs to pass)
.macro kt_start_tutorial_loop totalCues
    karate_event 0x06, \totalCues
.endm

@ [Event 0x07] Proceed With Tutorial if All Hit
.macro kt_exit_loop_if_all_hit noArgs
    karate_event 0x07, \noArgs
.endm

@ [Event 0x08] Use The Face
.macro kt_use_the_face use
    karate_event 0x08, \use
.endm
