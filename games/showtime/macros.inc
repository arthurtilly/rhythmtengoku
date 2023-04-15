
/* ------------------------ Beatscript Labels: Showtime ------------------------ */


@ Load Data
.macro load_showtime_labels
    @ Game Events
    .set EVENT_00,      0x00

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
    load_game showtime_engine, 0
.endm

@ Load Game: Showtime (Remix 3)
.macro load_showtime_remix_3
    load_showtime_labels
    load_game showtime_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro showtime_event event, args
    game_event showtime_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro showtime_event00 args
    showtime_event EVENT_00, \args
.endm
