.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Rhythm Tweezers) - Script
glabel D_089eadc4
    set_game_fade_in_time 8
    load_game rhythm_tweezers_prologue_engine, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_datumo_seqData
    rest 24
    rest 24
    run func_08045cc4, 5
    rest 24
    rest 24
    rest 24
    rest 24
    rest 24
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
