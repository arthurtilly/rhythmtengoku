.include "include/gba.inc"
.include "include/beatscript.inc"


/* Gameplay Scene - Generic Fade-Out Script */


@ Fade Out
glabel D_089cfda4
    enable_play_inputs FALSE
    fade_music_out 96
    fade_screen_out 12, BLACK
    rest 24
    stop
