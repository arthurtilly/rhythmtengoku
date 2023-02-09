.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (The Snappy Trio) - Script
glabel D_089eb238
    set_game_fade_in_time 8
    load_game D_089eb218, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_handclap_seqData
    run func_08045fc0, 1
    rest 2
    run func_08045fc0, 2
    rest 2
    run func_08045fc0, 3
    rest 2
    run func_08045fc0, 4
    rest 2
    run func_08045fc0, 5
    rest 2
    run func_08045fc0, 6
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
