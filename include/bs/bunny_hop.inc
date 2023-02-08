
/* ------------------------ BeatScript Labels: Bunny Hop ------------------------ */


@ Load Data
.macro load_bunny_hop_labels
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
    .set CUE_00,    0x00
    .set CUE_01,    0x01
    .set CUE_02,    0x02
    .set CUE_03,    0x03
    .set CUE_04,    0x04
    .set CUE_05,    0x05
    .set CUE_06,    0x06
    .set CUE_07,    0x07
    .set CUE_08,    0x08
    .set CUE_09,    0x09
    .set CUE_0A,    0x0A
.endm


@ Load Game: Bunny Hop
.macro load_bunny_hop
    load_bunny_hop_labels
    load_game BOUNCY_ROAD, 0
.endm

@ Load Game: Bunny Hop (ver1)
.macro load_bunny_hop_ver1
    load_bunny_hop_labels
    load_game BOUNCY_ROAD, 1
.endm

@ Load Game: Bunny Hop (ver2, rather broken)
.macro load_bunny_hop_ver2
    load_bunny_hop_labels
    load_game BOUNCY_ROAD, 2
.endm

@ Load Game: Bunny Hop (Remix 3)
.macro load_bunny_hop_remix3
    load_bunny_hop_labels
    load_game BOUNCY_ROAD, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bunny_hop_event event, args
    game_event BUNNY_HOP, \event, \args
.endm


@ [Event 0x0] Nothing
.macro bh_stub_event noArgs
    bunny_hop_event 0x00, \noArgs
.endm

@ [Event 0x01] ?
.macro bh_event01 args
    bunny_hop_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro bh_event02 args
    bunny_hop_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro bh_event03 args
    bunny_hop_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro bh_event04 args
    bunny_hop_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro bh_event05 args
    bunny_hop_event 0x05, \args
.endm

@ [Event 0x06] ?
.macro bh_event06 args
    bunny_hop_event 0x06, \args
.endm

@ [Event 0x07] ?
.macro bh_event07 args
    bunny_hop_event 0x07, \args
.endm

@ [Event 0x08] ?
.macro bh_event08 args
    bunny_hop_event 0x08, \args
.endm

@ [Event 0x09] ?
.macro bh_event09 args
    bunny_hop_event 0x09, \args
.endm
