
/* ------------------------ BeatScript Labels: Sick Beats ------------------------ */


@ Load Data
.macro load_sick_beats_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02
    .set EVENT_03,      0x03
    .set EVENT_04,      0x04
    .set EVENT_05,      0x05
    .set EVENT_06,      0x06
    .set STUB_EVENT,    0x07

    @ Cues
    .set CUE_00,    0x00
    .set CUE_04,    0x04
    .set CUE_08,    0x08
.endm


@ Load Game: Sick Beats
.macro load_sick_beats
    load_sick_beats_labels
    load_game SICK_BEATS, 0
.endm

@ Load Game: Sick Beats Endless
.macro load_sick_beats_endless
    load_sick_beats_labels
    load_game SICK_BEATS, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro sick_beats_event event, args
    game_event SICK_BEATS, \event, \args
.endm


@ [Event 0x00] ?
.macro skb_event00 args
    sick_beats_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro skb_event01 args
    sick_beats_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro skb_event02 args
    sick_beats_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro skb_event03 args
    sick_beats_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro skb_event04 args
    sick_beats_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro skb_event05 args
    sick_beats_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro skb_event06 args
    sick_beats_event 0x06, \args
.endm

@ [Event 0x07] Nothing
.macro skb_stub_event noArgs
    sick_beats_event 0x07, \noArgs
.endm
