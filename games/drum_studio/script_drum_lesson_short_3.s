.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_studio/macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 3) */


@ Dialogue
glabel D_080622d8
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08062330
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern Start
glabel D_0806239c
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_080623c0
.ascii "タムっていうのを\n"
.ascii "たたいてみよう！\n"
.ascii "\x8f\x5c字ボタンの右で\n"
.asciz "タムをたたくヨ！"
.balign 4, 0


@ Pattern
glabel D_08062404
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_TOM
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_08062488
.ascii "タムだったところを\n"
.ascii "\x8f\x5c字ボタンの上に\n"
.ascii "かえてみるヨ！\n"
.asciz "(ロールっていうみたい)"
.balign 4, 0


@ Pattern
glabel D_080624d4
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_ROLL
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_08062558
.ascii "\n"
.ascii "さっきと　ちがうところに\n"
.ascii "タムを１つ、ふやすヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08062598
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_ROLL
    rest 12
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_TOM
    rest 12
    return

.end
