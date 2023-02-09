.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Rat Race) - Script
glabel D_089ed02c
    set_game_fade_in_time 8
    load_game D_089ed00c, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_rat_seqData
    rest 24
    rest 24
    run func_08047280, 0
    run func_0804725c, 1
    rest 6
    run func_0804725c, 2
    rest 6
    run func_0804725c, 3
    rest 6
    run func_0804725c, 4
    rest 6
    rest 6
    rest 6
    rest 6
    rest 12
    run func_0804725c, 5
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
