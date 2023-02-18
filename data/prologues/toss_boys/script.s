.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Toss Boys) - Script
glabel D_089ed890
    set_game_fade_in_time 8
    load_game toss_boys_prologue_engine, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_toss_seqData
    rest 24
    rest 24
    run func_080479b0, 1
    rest 6
    run func_080479b0, 2
    rest 6
    run func_080479b0, 3
    rest 6
    run func_080479b0, 4
    rest 6
    run func_080479b0, 5
    rest 6
    run func_080479b0, 6
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
