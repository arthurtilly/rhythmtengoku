
/* ------------------------ Beatscript Labels: Wizard's Waltz ------------------------ */


@ Load Data
.macro load_wizards_waltz_labels
    @ Game Events
    .set SET_CYCLE_TIME,    0x00
    .set ENABLE_TUTORIAL,   0x01

    @ Cues
    .set CUE_WIZARD_00,    0x00
    .set CUE_WIZARD_01,    0x01
    .set CUE_WIZARD_02,    0x02
.endm


@ Load Game: Wizard's Waltz
.macro load_wizards_waltz
    load_wizards_waltz_labels
    load_game wizards_waltz_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro wizards_waltz_event event, args
    game_event wizards_waltz_engine, \event, \args
.endm


@ [Event 0x00] Set Rotation Cycle Period (default = 6 beats)
.macro wizards_waltz_set_cycle_time time
    wizards_waltz_event SET_CYCLE_TIME, \time
.endm


@ [Event 0x01] Enable Tutorial Mode
.macro wizards_waltz_tutorial_enabled enable
    wizards_waltz_event ENABLE_TUTORIAL, \enable
.endm
