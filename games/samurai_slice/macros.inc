
/* ------------------------ Beatscript Labels: Samurai Slice ------------------------ */


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
    load_game samurai_slice_engine, 0
.endm

@ Load Game: Samurai Slice (Remix 2, Remix 6, Remix 7, Remix 8)
.macro load_samurai_slice_remix
    load_samurai_slice_labels
    load_game samurai_slice_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro samurai_slice_event event, args
    game_event samurai_slice_engine, \event, \args
.endm


@ [Event 0x00] Nothing
.macro samurai_slice_stub_event
    samurai_slice_event STUB_EVENT, 0
.endm


@ [Event 0x01] ?
.macro samurai_slice_event01 args
    samurai_slice_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro samurai_slice_event02 args
    samurai_slice_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro samurai_slice_event03 args
    samurai_slice_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro samurai_slice_event04 args
    samurai_slice_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro samurai_slice_event05 args
    samurai_slice_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro samurai_slice_event06 args
    samurai_slice_event EVENT_06, \args
.endm


@ [Event 0x07] ?
.macro samurai_slice_event07 args
    samurai_slice_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro samurai_slice_event08 args
    samurai_slice_event EVENT_08, \args
.endm


@ [Event 0x09] ?
.macro samurai_slice_event09 args
    samurai_slice_event EVENT_09, \args
.endm
