.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Night Walk) - Script
glabel D_089ea9f8
    set_game_fade_in_time 8
    load_game D_089ea9d8, 0
    run stop_all_soundplayers, 0
    run func_080458ec, 0
    rest 24
    rest 24
    rest 24
    run func_080458ec, 1
    rest 24
    play_sfx s_jingle_handclap_seqData
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
