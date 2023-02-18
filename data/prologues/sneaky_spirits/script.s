.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Sneaky Spirits) - Script
glabel D_089ea0f8
    set_game_fade_in_time 8
    load_game sneaky_spirits_prologue_engine, 0
    run stop_all_soundplayers, 0
    run func_080451e4, 6
    play_sfx s_jingle_ghost_seqData
    rest 24
    rest 24
    run func_080451e4, 0
    rest 6
    run func_080451e4, 1
    rest 6
    run func_080451e4, 2
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 12
    run func_080451e4, 3
    rest 6
    rest 6
    run func_080451e4, 4
    rest 12
    run func_080451e4, 5
    rest 12
    rest 24
    rest 12
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
