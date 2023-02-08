
/* ------------------------ BeatScript Labels: Tap Trial ------------------------ */


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
    .set STUB_EVENT,    0x0F

    @ Cues
    .set CUE_DEFAULT, 0x00
.endm


@ Load Game: Tap Trial
.macro load_tap_trial
    load_tap_trial_labels
    load_game TAP_TRIAL, 0
.endm

@ Load Game: Tap Trial (Remix 7, Remix 8)
.macro load_tap_trial_remix8
    load_tap_trial_labels
    load_game TAP_TRIAL, 1
.endm

@ Load Game: Tap Trial (Remix 7)
.macro load_tap_trial_remix7
    load_tap_trial_labels
    load_game TAP_TRIAL, 2
.endm

@ Load Game: Tap Trial 2
.macro load_tap_trial_2
    load_tap_trial_labels
    load_game TAP_TRIAL, 3
.endm

@ Load Game: Tap Trial (Remix 5)
.macro load_tap_trial_remix5
    load_tap_trial_labels
    load_game TAP_TRIAL, 4
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro tap_trial_event event, args
    game_event TAP_TRIAL, \event, \args
.endm


@ [Event 0x00] ?
.macro tap_event00 args
    tap_trial_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro tap_event01 args
    tap_trial_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro tap_event02 args
    tap_trial_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro tap_event03 args
    tap_trial_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro tap_event04 args
    tap_trial_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro tap_event05 args
    tap_trial_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro tap_event06 args
    tap_trial_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro tap_event07 args
    tap_trial_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro tap_event08 args
    tap_trial_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro tap_event09 args
    tap_trial_event 0x09, \args
.endm

@ [Event 0x0A] ?
.macro tap_event0A args
    tap_trial_event 0x0A, \args
.endm

@ [Event 0x0B] ?
.macro tap_event0B args
    tap_trial_event 0x0B, \args
.endm

@ [Event 0x0C] ?
.macro tap_event0C args
    tap_trial_event 0x0C, \args
.endm

@ [Event 0x0D] ?
.macro tap_event0D args
    tap_trial_event 0x0D, \args
.endm

@ [Event 0x0E] ?
.macro tap_event0E args
    tap_trial_event 0x0E, \args
.endm

@ [Event 0x0F] Nothing
.macro tap_stub_event noArgs
    tap_trial_event 0x0F, \noArgs
.endm
