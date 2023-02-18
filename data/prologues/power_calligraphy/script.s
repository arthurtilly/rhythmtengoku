.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Power Calligraphy) - Script
glabel D_089eb5a0
    set_game_fade_in_time 8
    load_game power_calligraphy_prologue_engine, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_iai_seqData
    rest 24
    rest 24
    rest 24
    run func_080461f4, 0
    rest 24
    rest 24
    rest 24
    rest 24
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
