.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_studio/macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Long 2) */


@ Dialogue
glabel D_08062d98
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08062df0
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern Start
glabel D_08062ebc
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08062ee0
.ascii "\n"
.ascii "シンバルとスネアで\n"
.ascii "キメてみよう！\n"
.asciz "できるかな？"
.balign 4, 0


@ Pattern
glabel D_08062f10
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Pattern Start
glabel D_08062ff4
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 21
    return


@ Dialogue
glabel D_08063024
.ascii "\n"
.ascii "バスドラムを\n"
.ascii "チョットかえてみるネ。\n"
.asciz "できるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08063058
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_08063184
.ascii "バスドラムを\n"
.ascii "もうチョットだけ\n"
.ascii "かえてみるネ。\n"
.asciz "がんばって！！\n"
.balign 4, 0


@ Pattern
glabel D_080631c4
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return

.end
