.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Remix 2) - Script
glabel D_089ebee8
    set_game_fade_in_time 8
    load_game D_089ebec8, 0
    run stop_all_soundplayers, 0
    rest 24
    play_sfx s_jingle_remix_seqData
    rest 24
    rest 24
    run func_080467fc, 1
    rest 2
    run func_080467fc, 2
    rest 2
    run func_080467fc, 3
    rest 2
    run func_080467fc, 4
    rest 2
    run func_080467fc, 5
    rest 2
    run func_080467fc, 6
    rest 6
    rest 6
    rest 24
    rest 24
    rest 12
    play_sfx s_f_scratch_seqData
    rest 6
    run func_08006d80, 0
    rest 18
    set_game_fade_in_time 16
    return

.end
