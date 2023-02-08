
/* ------------------------ BeatScript Labels: Showtime ------------------------ */


@ Load Data
.macro load_showtime_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set STUB_EVENT,    0x01

    @ Cues
    .set CUE_GRAY,          0x00
    .set CUE_BLACK,         0x01
    .set CUE_WHITE_FAST,    0x02
    .set CUE_WHITE_FAST_S,  0x03
    .set CUE_WHITE,         0x04
.endm


@ Load Game: Showtime
.macro load_showtime
    load_showtime_labels
    load_game SHOWTIME, 0
.endm

@ Load Game: Showtime (Remix 3)
.macro load_showtime_remix3
    load_showtime_labels
    load_game SHOWTIME, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro showtime_event event, args
    game_event SHOWTIME, \event, \args
.endm


@ [Event 0x00] ?
.macro st_event00 args
    showtime_event 0x00, \args
.endm

@ [Event 0x01] Nothing
.macro st_stub_event noArgs
    showtime_event 0x01, \noArgs
.endm
