
/* ------------------------ Beatscript Labels: The Clappy Trio ------------------------ */


@ Load Data
.macro load_clappy_trio_labels
    @ Game Events
    .set LIONS_CROUCH,           0x00
    .set LIONS_CROUCH_SMIRK,     0x01
    .set LION_CLAP,              0x02
    .set GRAYSCALE_ON_NEXT_HIT,  0x03
    .set SET_LION_CLAP_VOLUME,   0x04
    .set TEXTBOX_SHOWN,          0x05

    @ Cues
    .set CUE_FULL_BEAT,          0x00
    .set CUE_HALF_BEAT,          0x01
    .set CUE_FULL_BEAT_W_SMILE,  0x04
    .set CUE_HALF_BEAT_W_SMILE,  0x05
.endm


@ Load Game: The Clappy Trio
.macro load_clappy_trio
    load_clappy_trio_labels
    load_game clappy_trio_engine, 0
.endm

@ Load Game: The Clappy Trio (4 Members)
.macro load_clappy_quartet
    load_clappy_trio_labels
    load_game clappy_trio_engine, 1
.endm

@ Load Game: The Snappy Trio
.macro load_snappy_trio
    load_clappy_trio_labels
    load_game clappy_trio_engine, 4
.endm

@ Load Game: The Snappy Trio (4 Members)
.macro load_snappy_quartet
    load_clappy_trio_labels
    load_game clappy_trio_engine, 5
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro clappy_trio_event event, args
    game_event clappy_trio_engine, \event, \args
.endm


@ [Event 0x00] Crouch
.macro clappy_trio_crouch_param playSound
    clappy_trio_event LIONS_CROUCH, \playSound
.endm

.macro clappy_trio_crouch
    clappy_trio_crouch_param 0
.endm


@ [Event 0x01] Crouch (Smirk)
.macro clappy_trio_crouch_smirk
    clappy_trio_event LIONS_CROUCH_SMIRK, 0
.endm


@ [Event 0x02] Clap
.macro clappy_trio_do_clap lionID
    clappy_trio_event LION_CLAP, \lionID
.endm


@ [Event 0x03] Run Grayscale Effect on Next Hit
.macro clappy_trio_prepare_grayscale_effect args
    clappy_trio_event GRAYSCALE_ON_NEXT_HIT, \args
.endm


@ [Event 0x04] Set NPC Clap Volume
.macro clappy_trio_set_npc_clap_volume volume
    clappy_trio_event SET_LION_CLAP_VOLUME, \volume
.endm


@ [Event 0x05] Set Textbox Visibility
.macro clappy_trio_textbox_shown enabled
    clappy_trio_event TEXTBOX_SHOWN, \enabled
.endm
