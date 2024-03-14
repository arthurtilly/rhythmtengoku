
/* ------------------------ Beatscript Labels: Bon Odori ------------------------ */


@ Load Data
.macro load_bon_odori_labels
    @ Game Events
    .set LYRICS_SET_CURR_LINE,    0x00
    .set LYRICS_CURR_LINE_PRINT_CENTER,       0x01
    .set LYRICS_CURR_LINE_PRINT_LEFT,         0x02
    .set LYRICS_CURR_LINE_PRINT_RIGHT,        0x03
    .set LYRICS_SET_Y_OFFSET,       0x04
    .set LYRICS_CURR_LINE_START_HIGHLIGHT,    0x05
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
    load_game bon_odori_engine, 0
.endm

@ Load Game: Bon Dance
.macro load_bon_dance
    load_bon_odori_labels
    load_game bon_odori_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro bon_odori_event event, args
    game_event bon_odori_engine, \event, \args
.endm


@ [Event 0x00] Set Current Target Lyric Line
.macro bon_odori_lyrics_set_curr_line line
    bon_odori_event LYRICS_SET_CURR_LINE, \line
.endm


@ [Event 0x01] Print Lyrics (Center)
.macro bon_odori_lyrics_curr_line_print_center text
    bon_odori_event LYRICS_CURR_LINE_PRINT_CENTER, \text
.endm

.macro bon_odori_lyrics_print_center line, text
    bon_odori_lyrics_set_curr_line \line
    bon_odori_lyrics_curr_line_print_center \text
.endm

.macro bon_odori_lyrics_clear_line line
    bon_odori_lyrics_print_center \line, NULL
.endm


@ [Event 0x02] Print Lyrics (Left)
.macro bon_odori_lyrics_curr_line_print_left text
    bon_odori_event LYRICS_CURR_LINE_PRINT_LEFT, \text
.endm

.macro bon_odori_lyrics_print_left line, text
    bon_odori_lyrics_set_curr_line \line
    bon_odori_lyrics_curr_line_print_left \text
.endm


@ [Event 0x03] Print Lyrics (Right)
.macro bon_odori_lyrics_curr_line_print_right text
    bon_odori_event LYRICS_CURR_LINE_PRINT_RIGHT, \text
.endm

.macro bon_odori_lyrics_print_right line, text
    bon_odori_lyrics_set_curr_line \line
    bon_odori_lyrics_curr_line_print_right \text
.endm


@ [Event 0x04] Offset Lyrics Vertical Position
.macro bon_odori_lyrics_set_y_offset yOfs
    bon_odori_event LYRICS_SET_Y_OFFSET, \yOfs
.endm


@ [Event 0x05] Start Highlighting Lyrics
.macro bon_odori_lyrics_curr_line_start_highlight time
    bon_odori_event LYRICS_CURR_LINE_START_HIGHLIGHT, \time
.endm

.macro bon_odori_lyrics_start_highlight line, time
    bon_odori_lyrics_set_curr_line \line
    bon_odori_lyrics_curr_line_start_highlight \time
.endm


@ [Event 0x06] Lighten Screen (Gradual)
.macro bon_odori_lighten_screen fadeTime
    bon_odori_event LIGHTEN_SCREEN, \fadeTime
.endm


@ [Event 0x07] Darken Screen (Gradual)
.macro bon_odori_darken_screen fadeTime
    bon_odori_event DARKEN_SCREEN, \fadeTime
.endm


@ [Event 0x08] Blank Screen (Instant)
.macro bon_odori_set_screen_black
    bon_odori_event SET_SCREEN_TO_BLACK, 0
.endm


@ [Event 0x09] Lighten Screen (Instant)
.macro bon_odori_set_screen_light
    bon_odori_event SET_SCREEN_TO_LIGHT, 0
.endm


@ [Event 0x0A] Darken Screen (Instant)
.macro bon_odori_set_screen_dark
    bon_odori_event SET_SCREEN_TO_DARK, 0
.endm


@ [Event 0x0B] Play Animation for NPC Donpans
.macro bon_odori_animate_npc anim
    bon_odori_event ANIMATE_NPC, \anim
.endm


@ [Event 0x0C] Play Animation for Player Donpan
.macro bon_odori_animate_player anim
    bon_odori_event ANIMATE_PLAYER, \anim
.endm


@ [Event 0x0D] Play Animation for All Donpans
.macro bon_odori_animate_all anim
    bon_odori_event ANIMATE_ALL, \anim
.endm


@ [Event 0x0E] Force Current Animation Duration for NPC Donpans
.macro bon_odori_set_npc_anim_time time
    bon_odori_event SET_NPC_ANIM_TIME, \time
.endm


@ [Event 0x0F] Start Testing Player Inputs
.macro bon_odori_start_input_check
    bon_odori_event START_INPUT_CHECK, 0
.endm


@ [Event 0x10] Stop Testing Player Inputs (and give reaction)
.macro bon_odori_stop_input_check
    bon_odori_event STOP_INPUT_CHECK, 0
.endm
