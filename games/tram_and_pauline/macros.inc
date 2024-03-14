
/* ------------------------ Beatscript Labels: Tram & Pauline ------------------------ */


@ Load Data
.macro load_tram_pauline_labels
    @ Game Events
    .set EVENT_00,      0x00
    .set EVENT_01,      0x01
    .set EVENT_02,      0x02

    @ Cues
    .set CUE_TRAM,      0x00
    .set CUE_PAULINE,   0x01
.endm


@ Load Game: Tram & Pauline (Tutorial)
.macro load_tram_pauline_practice
    load_tram_pauline_labels
    load_game tram_pauline_engine, 0
.endm

@ Load Game: Tram & Pauline
.macro load_tram_pauline
    load_tram_pauline_labels
    load_game tram_pauline_engine, 1
.endm

@ Load Game: Tram & Pauline (Remix 3)
.macro load_tram_pauline_remix_3
    load_tram_pauline_labels
    load_game tram_pauline_engine, 2
.endm

@ Load Game: Tram & Pauline (No Curtain)
.macro load_tram_pauline_no_curtain
    load_tram_pauline_labels
    load_game tram_pauline_engine, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro tram_pauline_event event, args
    game_event tram_pauline_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro tram_pauline_event00 args
    tram_pauline_event EVENT_00, \args
.endm


@ [Event 0x01] ?
.macro tram_pauline_event01 args
    tram_pauline_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro tram_pauline_event02 args
    tram_pauline_event EVENT_02, \args
.endm
