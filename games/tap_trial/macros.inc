
/* ------------------------ Beatscript Labels: Tap Trial ------------------------ */


@ Load Data
.macro load_tap_trial_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set EVENT_07,      0x07
    .set EVENT_08,      0x08
    .set EVENT_09,      0x09
    .set EVENT_0A,      0x0A
    .set EVENT_0B,      0x0B
    .set EVENT_0C,      0x0C
    .set EVENT_0D,      0x0D
    .set EVENT_0E,      0x0E

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Tap Trial
.macro load_tap_trial
    load_tap_trial_labels
    load_game tap_trial_engine, 0
.endm

@ Load Game: Tap Trial (Remix 7, Remix 8)
.macro load_tap_trial_remix
    load_tap_trial_labels
    load_game tap_trial_engine, 1
.endm

@ Load Game: Tap Trial (Remix 7)
.macro load_tap_trial_pigs
    load_tap_trial_labels
    load_game tap_trial_engine, 2
.endm

@ Load Game: Tap Trial 2
.macro load_tap_trial_2
    load_tap_trial_labels
    load_game tap_trial_engine, 3
.endm

@ Load Game: Tap Trial (Remix 5)
.macro load_tap_trial_remix_5
    load_tap_trial_labels
    load_game tap_trial_engine, 4
.endm

@ Load Game: Tap Trial (Random Version)
.macro load_tap_trial_random
    load_tap_trial_labels
    load_game tap_trial_engine, 6
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro tap_trial_event event, args
    game_event tap_trial_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro tap_trial_event00 args
    tap_trial_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro tap_trial_event01 args
    tap_trial_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro tap_trial_event02
    tap_trial_event EVENT_02, 0
.endm


@ [Event 0x03] ?
.macro tap_trial_event03 args
    tap_trial_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro tap_trial_event04 args
    tap_trial_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro tap_trial_event05
    tap_trial_event EVENT_05, 0
.endm


@ [Event 0x06] ?
.macro tap_trial_event06 args
    tap_trial_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro tap_trial_event07 args
    tap_trial_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro tap_trial_event08 args
    tap_trial_event EVENT_08, \args
.endm


@ [Event 0x09] ?
.macro tap_trial_event09 args
    tap_trial_event EVENT_09, \args
.endm


@ [Event 0x0A] ?
.macro tap_trial_event0A args
    tap_trial_event EVENT_0A, \args
.endm


@ [Event 0x0B] ?
.macro tap_trial_event0B args
    tap_trial_event EVENT_0B, \args
.endm


@ [Event 0x0C] ?
.macro tap_trial_event0C args
    tap_trial_event EVENT_0C, \args
.endm


@ [Event 0x0D] ?
.macro tap_trial_event0D args
    tap_trial_event EVENT_0D, \args
.endm


@ [Event 0x0E] ?
.macro tap_trial_event0E args
    tap_trial_event EVENT_0E, \args
.endm
