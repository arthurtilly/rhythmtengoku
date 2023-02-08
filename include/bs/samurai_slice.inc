
/* ------------------------ BeatScript Labels: Samurai Slice ------------------------ */


@ Load Data
.macro load_samurai_slice_labels
    @ Game Events
    .set STUB_EVENT,    0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set EVENT_07,      0x07
    .set EVENT_08,      0x08
    .set EVENT_09,      0x09

    @ Cues
    .set CUE_FIRST,     0x00
    .set CUE_SECOND,    0x01
.endm


@ Load Game: Samurai Slice
.macro load_samurai_slice
    load_samurai_slice_labels
    load_game SAMURAI_SLICE, 0
.endm

@ Load Game: Samurai Slice (Remix 2, Remix 6)
.macro load_samurai_slice_remix
    load_samurai_slice_labels
    load_game SAMURAI_SLICE, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro samurai_slice_event event, args
    game_event SAMURAI_SLICE, \event, \args
.endm


@ [Event 0x00] Nothing
.macro iai_stub_event noArgs
    samurai_slice_event 0x00, \noArgs
.endm

@ [Event 0x01] ?
.macro iai_event01 args
    samurai_slice_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro iai_event02 args
    samurai_slice_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro iai_event03 args
    samurai_slice_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro iai_event04 args
    samurai_slice_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro iai_event05 args
    samurai_slice_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro iai_event06 args
    samurai_slice_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro iai_event07 args
    samurai_slice_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro iai_event08 args
    samurai_slice_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro iai_event09 args
    samurai_slice_event 0x09, \args
.endm
