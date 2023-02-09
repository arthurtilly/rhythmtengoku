.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Sick Beats) - Script
glabel D_089edd64
    set_game_fade_in_time 8
    load_game D_089edd44, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_ghost_seqData
    rest 24
    rest 24
    run func_08047d0c, 0
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
