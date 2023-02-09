.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Bon Dance) - Script
glabel D_089ea584
    set_game_fade_in_time 8
    load_game D_089ea564, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_bon_seqData
    rest 24
    rest 24
    run func_080454e0, 5
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
