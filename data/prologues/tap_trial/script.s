.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Tap Trial) - Script
glabel D_089ed5b8
    set_game_fade_in_time 8
    load_game tap_trial_prologue_engine, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_tap_seqData
    rest 24
    run func_08047794, 1
    rest 6
    rest 6
    rest 6
    rest 24
    rest 6
    rest 6
    rest 24
    rest 24
    rest 24
    rest 12
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
