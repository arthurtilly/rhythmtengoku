.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Marching Orders 2) - Script
glabel D_089eb884
    set_game_fade_in_time 8
    load_game D_089eb864, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_march_seqData
    run func_08046408, 1
    rest 12
    run func_08046408, 2
    rest 12
    run func_08046408, 3
    rest 12
    run func_08046408, 4
    rest 12
    run func_08046408, 5
    rest 12
    run func_08046408, 6
    rest 12
    run func_08046408, 7
    rest 12
    rest 12
    rest 24
    rest 12
    run func_08006d80, 0
    rest 12
    set_game_fade_in_time 16
    return

.end
