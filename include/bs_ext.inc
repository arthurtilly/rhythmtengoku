.include "include/bs.inc"

@ Scene-global variable, most commonly set by function calls and read for conditional statements.
.set GLOBAL_VARIABLE, (D_030053c0 + 0x24)
.set FUNCTION_RESULT, GLOBAL_VARIABLE


/* ------------------------ Extension Macros (BeatScript) ------------------------ */


@ [SCENE] Set Tempo
.macro set_tempo bpm
    run set_beatscript_tempo, \bpm
.endm


@ [SCENE] Set Music Key
.macro set_music_key key
    run scene_set_music_key, \key
.endm


@ [SCENE] Set Music Volume
.macro set_music_volume volume
    run scene_set_music_volume, \volume
.endm


@ [SCENE] Get Random Value
.macro get_random range
    run agb_random, \range
.endm


@ [GENERAL] Switch Statement with Random Value
.macro switch_random type, range
    get_random \range
    switch \type, FUNCTION_RESULT
.endm
