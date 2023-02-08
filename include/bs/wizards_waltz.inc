
/* ------------------------ BeatScript Labels: Wizard's Waltz ------------------------ */


@ Load Data
.macro load_wizards_waltz_labels
    @ Game Events
    .set SET_CYCLE_TIME,    0x00
    .set ENABLE_TUTORIAL,   0x01

    @ Cues
    .set CUE_00,    0x00
    .set CUE_01,    0x01
    .set CUE_02,    0x02
.endm


@ Load Game: Wizard's Waltz
.macro load_wizards_waltz
    load_wizards_waltz_labels
    load_game WIZARDS_WALTZ, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro wizards_waltz_event event, args
    game_event WIZARDS_WALTZ, \event, \args
.endm


@ [Event 0x00] Set Rotation Cycle Period (default = 6 beats)
.macro wiz_set_cycle_time time
    wizards_waltz_event 0x00, \time
.endm

@ [Event 0x01] Enable Tutorial Mode
.macro wiz_enable_tutorial enable
    wizards_waltz_event 0x01, \enable
.endm
