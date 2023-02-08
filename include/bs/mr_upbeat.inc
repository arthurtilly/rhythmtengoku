
/* ------------------------ BeatScript Labels: Mr. Upbeat ------------------------ */


@ Load Data
.macro load_mr_upbeat_labels
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
    .set EVENT_0F,      0x0F
    .set STUB_EVENT,    0x10

    @ Cues
    .set CUE_H_BEAT_REALTIME,   0x00
    .set CUE_1_BEAT_TO_TEMPO,   0x01
    .set CUE_H_BEAT_TO_TEMPO,   0x08
.endm


@ Load Game: Mr. Upbeat
.macro load_mr_upbeat
    load_mr_upbeat_labels
    load_game MR_UPBEAT, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro mr_upbeat_event event, args
    game_event MR_UPBEAT, \event, \args
.endm


@ [Event 0x00] ?
.macro upb_event00 args
    mr_upbeat_event 0x00, \args
.endm

@ [Event 0x01] ?
.macro upb_event01 args
    mr_upbeat_event 0x01, \args
.endm

@ [Event 0x02] ?
.macro upb_event02 args
    mr_upbeat_event 0x02, \args
.endm

@ [Event 0x03] ?
.macro upb_event03 args
    mr_upbeat_event 0x03, \args
.endm

@ [Event 0x04] ?
.macro upb_event04 args
    mr_upbeat_event 0x04, \args
.endm

@ [Event 0x05] ?
.macro upb_event05 args
    mr_upbeat_event 0x05, \args
.endm

@ [Event 0x06] Nothing
.macro upb_stub_event noArgs
    mr_upbeat_event 0x06, \noArgs
.endm
