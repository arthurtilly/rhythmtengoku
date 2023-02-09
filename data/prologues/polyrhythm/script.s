.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Polyrhythm) - Script
glabel D_089eba2c
    set_game_fade_in_time 8
    load_game D_089eba0c, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_poli_seqData
    rest 24
    run func_08046504, 1
    rest 6
    run func_08046504, 2
    rest 6
    run func_08046504, 3
    rest 6
    run func_08046504, 4
    rest 6
    rest 6
    rest 6
    rest 6
    rest 12
    run func_08046504, 5
    rest 6
    rest 6
    rest 24
    rest 24
    rest 12
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
