
/* ------------------------ BeatScript Labels: Rap Men ------------------------ */


@ Load Data
.macro load_rap_men_labels
    @ Game Events
    .set ANIMATE_RAPPER,    0x00
    .set ENABLE_TUTORIAL,   0x01
    .set STUB_EVENT,        0x02

    @ Cues
    .set CUE_UN,    0x00
    .set CUE_UUN,   0x01

    @ [Event 0x00] Rapper Animations
    .set ANIM_DESUKA,   0
    .set ANIM_KAMONE,   1
    .set ANIM_SAIKO,    2
    .set ANIM_RECOIL,   3
    .set ANIM_HONTO,    4
.endm


@ Load Game: Rap Men
.macro load_rap_men
    load_rap_men_labels
    load_game RAP_MEN, 0
.endm

@ Load Game: Rap Women
.macro load_rap_women
    load_rap_men_labels
    load_game RAP_MEN, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rap_men_event event, args
    game_event RAP_MEN, \event, \args
.endm


@ [Event 0x00] Rap
.macro rap_animate_rapper animID
    rap_men_event 0x00, \animID
.endm

@ [Event 0x01] Enable Tutorial
.macro rap_enable_tutorial enable
    rap_men_event 0x01, \enable
.endm

@ [Event 0x02] Nothing
.macro rap_stub_event noArgs
    rap_men_event 0x02, \noArgs
.endm
