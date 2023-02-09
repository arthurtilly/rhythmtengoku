.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (The Clappy Trio) - Script
glabel D_089eb084
    set_game_fade_in_time 8
    load_game D_089eb064, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_handclap_seqData
    run func_08045ec4, 1
    rest 2
    run func_08045ec4, 2
    rest 2
    run func_08045ec4, 3
    rest 2
    run func_08045ec4, 4
    rest 2
    run func_08045ec4, 5
    rest 2
    run func_08045ec4, 6
    rest 6
    rest 6
    rest 24
    rest 24
    rest 24
    rest 12
    rest 12
    run func_08006d80, 0
    rest 12
    set_game_fade_in_time 16
    return

.end
