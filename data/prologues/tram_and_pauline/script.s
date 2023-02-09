.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"


@ Prologue (Tram & Pauline) - Script
glabel D_089edc28
    set_game_fade_in_time 8
    load_game D_089edc08, 0
    run stop_all_soundplayers, 0
    play_sfx s_jingle_tap_seqData
    rest 24
    rest 24
    rest 24
    rest 12
    run func_08047bdc, 5
    rest 12
    rest 24
    rest 24
    rest 24
    run func_08006d80, 0
    rest 24
    set_game_fade_in_time 16
    return

.end
