.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Remix 4) - Script
glabel D_089ec280
    set_game_fade_in_time 8
    load_game D_089ec260, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_remix_seqData
    rest 24
    rest 24
    run func_080469f4, 1
    rest 2
    run func_080469f4, 2
    rest 2
    run func_080469f4, 3
    rest 2
    run func_080469f4, 4
    rest 2
    run func_080469f4, 5
    rest 2
    run func_080469f4, 6
    rest 6
    rest 6
    rest 24
    rest 24
    rest 12
    play_sfx s_f_scratch_seqData
    rest 6
    run func_08006d80, 0
    rest 18
    rest 24
    set_game_fade_in_time 16
    return

.end
