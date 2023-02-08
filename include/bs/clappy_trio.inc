
/* ------------------------ BeatScript Labels: The Clappy Trio ------------------------ */


@ Load Data
.macro load_clappy_trio_labels
    @ Game Events
    .set LIONS_CROUCH,          0x00
    .set LIONS_CROUCH_SMIRK,    0x01
    .set LION_CLAP,             0x02
    .set GRAYSCALE_ON_NEXT_HIT, 0x03
    .set SET_LION_CLAP_VOLUME,  0x04
    .set HIDE_TEXTBOX,          0x05

    @ Cues
    .set CUE_FULL_BEAT,         0x00
    .set CUE_HALF_BEAT,         0x01
    .set CUE_FULL_BEAT_W_SMILE, 0x04
    .set CUE_HALF_BEAT_W_SMILE, 0x05
.endm


@ Load Game: The Clappy Trio
.macro load_clappy_trio
    load_clappy_trio_labels
    load_game CLAPPY_TRIO, 0
.endm

@ Load Game: The Snappy Trio
.macro load_snappy_trio
    load_clappy_trio_labels
    load_game CLAPPY_TRIO, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro clappy_trio_event event, args
    game_event CLAPPY_TRIO, \event, \args
.endm


@ [Event 0x00] Crouch
.macro ct_crouch noArgs
    clappy_trio_event 0x00, \noArgs
.endm

@ [Event 0x01] Crouch (Smirk)
.macro ct_crouch_smirk noArgs
    clappy_trio_event 0x01, \noArgs
.endm

@ [Event 0x02] Clap
.macro ct_clap lionID
    clappy_trio_event 0x02, \lionID
.endm

@ [Event 0x03] Run Grayscale Effect on Next Hit
.macro ct_grayscale_on_next_hit noArgs
    clappy_trio_event 0x03, \noArgs
.endm

@ [Event 0x04] Set NPC Clap Volume
.macro ct_set_npc_clap_volume volume
    clappy_trio_event 0x04, \volume
.endm

@ [Event 0x05] Hide Textbox
.macro ct_hide_textbox noArgs
    clappy_trio_event 0x05, \noArgs
.endm
