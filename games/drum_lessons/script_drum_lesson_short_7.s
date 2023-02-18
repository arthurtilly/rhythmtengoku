.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 7) */


@ Dialogue
glabel D_08060310
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08060368
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern Start
glabel D_080603c8
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_080603ec
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：Rボタン"
.balign 4, 0


@ Pattern Start
glabel D_08060424
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 21
    return


@ Dialogue
glabel D_08060454
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060484
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_080604f0
.ascii "\n"
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern Start
glabel D_08060520
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 18
    spawn_cue CUE_KICK_R
    rest 3
    return


@ Dialogue
glabel D_08060568
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_080605a4
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08060628
.ascii "\n"
.ascii "これまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060664
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08060700
.ascii "\n"
.ascii "またまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0806073c
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_080607f0
.ascii "これでさいご！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：両手"
.balign 4, 0


@ Pattern
glabel D_08060834
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    rest 11
    spawn_cue CUE_SNARE_R
    rest 1
    rest 1
    spawn_cue CUE_SNARE_L
    rest 23
    return

.end
