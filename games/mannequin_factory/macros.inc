
/* ------------------------ Beatscript Labels: Mannequin Factory ------------------------ */


@ Load Data
.macro load_mannequin_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06

    @ Cues
    .set CUE_MANNEQUIN_00,    0x00
    .set CUE_MANNEQUIN_01,    0x01
    .set CUE_MANNEQUIN_02,    0x02
    .set CUE_MANNEQUIN_03,    0x03
    .set CUE_MANNEQUIN_04,    0x04
    .set CUE_MANNEQUIN_05,    0x05
.endm


@ Load Game: Mannequin Factory
.macro load_mannequin_factory
    load_mannequin_labels
    load_game mannequin_factory_engine, 0
.endm

@ Load Game: Mannequin Factory (Practice)
.macro load_mannequin_factory_practice
    load_mannequin_labels
    load_game mannequin_factory_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro mannequin_factory_event event, args
    game_event mannequin_factory_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro mannequin_factory_event00
    mannequin_factory_event EVENT_00, 0
.endm


@ [Event 0x01] ?
.macro mannequin_factory_event01
    mannequin_factory_event EVENT_01, 0
.endm


@ [Event 0x02] ?
.macro mannequin_factory_event02 args
    mannequin_factory_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro mannequin_factory_event03 args
    mannequin_factory_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro mannequin_factory_event04 args
    mannequin_factory_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro mannequin_factory_event05
    mannequin_factory_event EVENT_05, 0
.endm


@ [Event 0x06] ?
.macro mannequin_factory_event06 args
    mannequin_factory_event EVENT_06, \args
.endm
