
/* ------------------------ BeatScript Labels: Tram & Pauline ------------------------ */


@ Load Data
.macro load_tram_and_pauline_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02

    @ Cues
    .set CUE_TRAM,      0x00
    .set CUE_PAULINE,   0x01
.endm


@ Load Game: Tram & Pauline (Tutorial)
.macro load_tram_and_pauline_tutorial
    load_tram_and_pauline_labels
    load_game TRAM_AND_PAULINE, 0
.endm

@ Load Game: Tram & Pauline
.macro load_tram_and_pauline
    load_tram_and_pauline_labels
    load_game TRAM_AND_PAULINE, 1
.endm

@ Load Game: Tram & Pauline (Remix 3)
.macro load_tram_and_pauline_remix3
    load_tram_and_pauline_labels
    load_game TRAM_AND_PAULINE, 2
.endm

@ Load Game: Tram & Pauline (No Curtain)
.macro load_tram_and_pauline_no_curtain
    load_tram_and_pauline_labels
    load_game TRAM_AND_PAULINE, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro tram_and_pauline_event event, args
    game_event TRAM_AND_PAULINE, \event, \args
.endm


@ [Event 0x00] ?
.macro tp_event00 args
    tram_and_pauline_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro tp_event01 args
    tram_and_pauline_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro tp_event02 args
    tram_and_pauline_event 0x02, \args
.endm
