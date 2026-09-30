
/* ------------------------ Beatscript Labels: Mr. Upbeat ------------------------ */


@ Load Data
.macro load_mr_upbeat_labels
    @ Game Events
    .set SWAP_METRONOME_DIRECTION, 0x00
    .set SET_GAME_OVER_SCRIPT,     0x01
    .set MR_UPBEAT_BEEP,           0x02
    .set INCREMENT_SCORE,          0x03
    .set SAVE_HIGHSCORE,           0x04
    .set PLAY_GAME_OVER_JINGLE,    0x05

    @ Cues
    .set CUE_H_BEAT_REALTIME,   0x00
    .set CUE_1_BEAT_TO_TEMPO,   0x01
    .set CUE_H_BEAT_TO_TEMPO,   0x08
.endm


@ Load Game: Mr. Upbeat
.macro load_mr_upbeat
    load_mr_upbeat_labels
    load_game mr_upbeat_engine, 0
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro mr_upbeat_event event, args
    game_event mr_upbeat_engine, \event, \args
.endm


@ [Event 0x00] Swap Metronome Direction + Set Speed
.macro mr_upbeat_swap_metronome_direction ticks
    mr_upbeat_event SWAP_METRONOME_DIRECTION, \ticks
.endm


@ [Event 0x01] Set Game Over Script
.macro mr_upbeat_set_game_over_script script
    mr_upbeat_event SET_GAME_OVER_SCRIPT, \script
.endm


@ [Event 0x02] Mr. Upbeat Beep
.macro mr_upbeat_beep
    mr_upbeat_event MR_UPBEAT_BEEP, 0
.endm


@ [Event 0x03] Increment Score
.macro mr_upbeat_increment_score
    mr_upbeat_event INCREMENT_SCORE, 0
.endm


@ [Event 0x04] Save Highscore
.macro mr_upbeat_save_highscore
    mr_upbeat_event SAVE_HIGHSCORE, 0
.endm


@ [Event 0x05] Play Game Over Jingle
.macro mr_upbeat_play_game_over_jingle
    mr_upbeat_event PLAY_GAME_OVER_JINGLE, 0
.endm
