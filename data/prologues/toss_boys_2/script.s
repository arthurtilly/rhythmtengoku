.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"

@ Prologue (Toss Boys 2) - Script
glabel D_089eda5c
    set_game_fade_in_time 8
    load_game D_089eda3c, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_toss_seqData
    rest 24
    rest 24
    run func_08047aac, 1
    rest 6
    run func_08047aac, 2
    rest 6
    run func_08047aac, 3
    rest 6
    run func_08047aac, 4
    rest 6
    run func_08047aac, 5
    rest 6
    run func_08047aac, 6
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
