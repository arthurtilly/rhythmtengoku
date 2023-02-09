.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Spaceball) - Script
glabel D_089ea2dc
    set_game_fade_in_time 8
    load_game D_089ea2bc, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_baseball_seqData
    rest 24
    rest 24
    run func_080452e0, 1
    rest 2
    run func_080452e0, 2
    rest 2
    run func_080452e0, 3
    rest 2
    run func_080452e0, 4
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
