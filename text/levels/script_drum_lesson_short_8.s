.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 8) */


@ Dialogue
glabel D_0805fa78
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_0805fad0
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern
glabel D_0805fb3c
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_0805fb60
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：両手"
.balign 4, 0


@ Pattern
glabel D_0805fb94
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 11
    spawn_cue CUE_SNARE_R
    rest 1
    rest 1
    spawn_cue CUE_SNARE_L
    rest 23
    return


@ Dialogue
glabel D_0805fc24
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805fc54
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 9
    return


@ Dialogue
glabel D_0805fc90
.ascii "\n"
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805fcc0
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    return


@ Dialogue
glabel D_0805fd14
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805fd50
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 4
    spawn_cue CUE_KICK_L
    rest 4
    spawn_cue CUE_KICK_R
    rest 1
    return


@ Dialogue
glabel D_0805fdbc
.ascii "\n"
.ascii "これまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805fdf8
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 11
    spawn_cue CUE_SNARE_R
    rest 1
    rest 1
    spawn_cue CUE_SNARE_L
    rest 23
    return

.end
