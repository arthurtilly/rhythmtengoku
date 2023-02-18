
/* ------------------------ BeatScript Labels: Bon Odori ------------------------ */


@ Load Data
.macro load_bon_odori_labels
    @ Game Events
    .set SET_CURRENT_LYRIC_LINE,    0x00
    .set PRINT_LYRICS_CENTER,       0x01
    .set PRINT_LYRICS_LEFT,         0x02
    .set PRINT_LYRICS_RIGHT,        0x03
    .set SET_LYRICS_Y_OFFSET,       0x04
    .set START_LYRICS_HIGHLIGHT,    0x05
    .set LIGHTEN_SCREEN,            0x06
    .set DARKEN_SCREEN,             0x07
    .set SET_SCREEN_TO_BLACK,       0x08
    .set SET_SCREEN_TO_LIGHT,       0x09
    .set SET_SCREEN_TO_DARK,        0x0A
    .set ANIMATE_NPC,               0x0B
    .set ANIMATE_PLAYER,            0x0C
    .set ANIMATE_ALL,               0x0D
    .set SET_NPC_ANIM_TIME,         0x0E
    .set START_INPUT_CHECK,         0x0F
    .set STOP_INPUT_CHECK,          0x10
    .set STUB_EVENT,                0x11

    @ Cues
    .set CUE_FORWARD_CLAP,  0x00
    .set CUE_SIDE_CLAP,     0x01

    @ Donpan Animations
    .set ANIM_BEAT,     0
    .set ANIM_CLAP_S,   1
    .set ANIM_CLAP_F,   2
    .set ANIM_BOW,      3
    .set ANIM_GLARE,    4
    .set ANIM_HAPPY_1,  5
    .set ANIM_HAPPY_2,  6
    .set ANIM_SPIN,     7
.endm


@ Load Game: Bon Odori
.macro load_bon_odori
    load_bon_odori_labels
    load_game BON_ODORI, 0
.endm

@ Load Game: Bon Dance
.macro load_bon_dance
    load_bon_odori_labels
    load_game BON_ODORI, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bon_odori_event event, args
    game_event BON_ODORI, \event, \args
.endm


@ [Event 0x00] Set Current Target Lyric Line
.macro bon_set_lyrics_line line
    bon_odori_event 0x00, \line
.endm

@ [Event 0x01] Print Lyrics (Center)
.macro bon_print_lyrics_c text
    bon_odori_event 0x01, \text
.endm

@ [Event 0x02] Print Lyrics (Left)
.macro bon_print_lyrics_l text
    bon_odori_event 0x02, \text
.endm

@ [Event 0x03] Print Lyrics (Right)
.macro bon_print_lyrics_r text
    bon_odori_event 0x03, \text
.endm

@ [Event 0x04] Offset Lyrics Vertical Position
.macro bon_set_lyrics_y_offset yOfs
    bon_odori_event 0x04, \yOfs
.endm

@ [Event 0x05] Start Highlighting Lyrics
.macro bon_start_lyrics_highlight time
    bon_odori_event 0x05, \time
.endm

@ [Event 0x06] Lighten Screen (Gradual)
.macro bon_lighten_screen fadeTime
    bon_odori_event 0x06, \fadeTime
.endm

@ [Event 0x07] Darken Screen (Gradual)
.macro bon_darken_screen fadeTime
    bon_odori_event 0x07, \fadeTime
.endm

@ [Event 0x08] Blank Screen (Instant)
.macro bon_set_screen_black noArgs
    bon_odori_event 0x08, \noArgs
.endm

@ [Event 0x09] Lighten Screen (Instant)
.macro bon_set_screen_light noArgs
    bon_odori_event 0x09, \noArgs
.endm

@ [Event 0x0A] Darken Screen (Instant)
.macro bon_set_screen_dark noArgs
    bon_odori_event 0x0A, \noArgs
.endm

@ [Event 0x0B] Play Animation for NPC Donpans
.macro bon_animate_npc anim
    bon_odori_event 0x0B, \anim
.endm

@ [Event 0x0C] Play Animation for Player Donpan
.macro bon_animate_player anim
    bon_odori_event 0x0C, \anim
.endm

@ [Event 0x0D] Play Animation for All Donpans
.macro bon_animate_donpans anim
    bon_odori_event 0x0D, \anim
.endm

@ [Event 0x0E] Force Current Animation Duration for NPC Donpans
.macro bon_set_npc_anim_time time
    bon_odori_event 0x0E, \time
.endm

@ [Event 0x0F] Start Testing Player Inputs
.macro bon_start_input_check noArgs
    bon_odori_event 0x0F, \noArgs
.endm

@ [Event 0x10] Stop Testing Player Inputs (and give reaction)
.macro bon_stop_input_check noArgs
    bon_odori_event 0x10, \noArgs
.endm

@ [Event 0x11] Nothing
.macro bon_stub_event noArgs
    bon_odori_event 0x11, \noArgs
.endm
