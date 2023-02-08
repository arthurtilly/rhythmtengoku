.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 1) */


@ Dialogue
glabel D_0805f114
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_0805f16c
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern Start
glabel D_0805f1c0
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_0805f1e4
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805f20c
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_0805f278
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805f2a8
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_0805f32c
.ascii "\n"
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805f35c
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_0805f3f8
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern Start
glabel D_0805f434
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 9
    return


@ Dialogue
glabel D_0805f470
.ascii "\n"
.ascii "これまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0805f4ac
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 12
    return

.end
