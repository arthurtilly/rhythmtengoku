
/* ------------------------ Beatscript Labels: Bunny Hop ------------------------ */


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
    .set CUE_BUNNY_00,    0x00
    .set CUE_BUNNY_01,    0x01
    .set CUE_BUNNY_02,    0x02
    .set CUE_BUNNY_03,    0x03
    .set CUE_BUNNY_04,    0x04
    .set CUE_BUNNY_05,    0x05
    .set CUE_BUNNY_06,    0x06
    .set CUE_BUNNY_07,    0x07
    .set CUE_BUNNY_08,    0x08
    .set CUE_BUNNY_09,    0x09
    .set CUE_BUNNY_0A,    0x0A
.endm


@ Load Game: Bunny Hop
.macro load_bunny_hop
    load_bunny_hop_labels
    load_game bunny_hop_engine, 0
.endm

@ Load Game: Bunny Hop (ver1)
.macro load_bunny_hop_ver1
    load_bunny_hop_labels
    load_game bunny_hop_engine, 1
.endm

@ Load Game: Bunny Hop (ver2, rather broken)
.macro load_bunny_hop_ver2
    load_bunny_hop_labels
    load_game bunny_hop_engine, 2
.endm

@ Load Game: Bunny Hop (Remix 3)
.macro load_bunny_hop_remix_3
    load_bunny_hop_labels
    load_game bunny_hop_engine, 3
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bunny_hop_event event, args
    game_event bunny_hop_engine, \event, \args
.endm


@ [Event 0x0] Nothing
.macro bunny_hop_stub_event
    bunny_hop_event STUB_EVENT, 0
.endm


@ [Event 0x01] ?
.macro bunny_hop_event01 args
    bunny_hop_event EVENT_01, \args
.endm


@ [Event 0x02] ?
.macro bunny_hop_event02 args
    bunny_hop_event EVENT_02, \args
.endm


@ [Event 0x03] ?
.macro bunny_hop_event03 args
    bunny_hop_event EVENT_03, \args
.endm


@ [Event 0x04] ?
.macro bunny_hop_event04
    bunny_hop_event EVENT_04, 0
.endm


@ [Event 0x05] ?
.macro bunny_hop_event05 args
    bunny_hop_event EVENT_05, \args
.endm


@ [Event 0x06] ?
.macro bunny_hop_event06
    bunny_hop_event EVENT_06, 0
.endm


@ [Event 0x07] ?
.macro bunny_hop_event07 args
    bunny_hop_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro bunny_hop_event08 args
    bunny_hop_event EVENT_08, \args
.endm


@ [Event 0x09] ?
.macro bunny_hop_event09 args
    bunny_hop_event EVENT_09, \args
.endm
