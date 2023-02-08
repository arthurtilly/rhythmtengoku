.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 2) */


@ Dialogue
glabel D_08061e24
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08061e7c
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_08061ed0
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08061ef4
.ascii "\n"
.ascii "バスとスネアを\n"
.ascii "交互にたたくヨ！\n"
.asciz "できるかな？"
.balign 4, 0


@ Pattern
glabel D_08061f24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Pattern Start
glabel D_08061fc0
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 9
    return


@ Dialogue
glabel D_08061ffc
.ascii "\n"
.ascii "バスドラムのタイミングを\n"
.ascii "１カ所、ずらしてみるヨ。\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_0806203c
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_080620e4
.ascii "\n"
.ascii "こんどは１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08062114
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_080621d4
.ascii "\n"
.ascii "さらに１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_08062200
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    return

.end
