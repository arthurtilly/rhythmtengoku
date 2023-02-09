.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Wizard's Waltz) - Script
glabel D_089ede94
    set_game_fade_in_time 8
    load_game D_089ede74, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_witch_seqData
    rest 24
    rest 24
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
