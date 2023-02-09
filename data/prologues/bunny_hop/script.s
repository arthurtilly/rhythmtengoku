.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Bunny Hop) - Script
glabel D_089ecbd0
    set_game_fade_in_time 8
    load_game D_089ecbb0, 0
    run stop_all_soundplayers, 0
    run func_08046f0c, 0
    play_sfx s_jingle_rat_seqData
    rest 24
    rest 24
    run func_08046f30, 0
    run func_08046f0c, 1
    rest 6
    run func_08046f0c, 2
    rest 6
    run func_08046f0c, 3
    rest 6
    run func_08046f0c, 4
    rest 6
    run func_08046f0c, 5
    rest 6
    run func_08046f0c, 6
    rest 6
    rest 6
    rest 12
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
