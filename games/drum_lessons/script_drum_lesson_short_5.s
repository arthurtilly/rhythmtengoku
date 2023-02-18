.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 5) */


@ Dialogue
glabel D_0805fea0
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_0805fef8
    spawn_cue CUE_SNARE_L
    rest 24
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern
glabel D_0805ff58
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_0805ff7c
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：Rボタン"
.balign 4, 0


@ Pattern
glabel D_0805ffb4
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 21
    return


@ Dialogue
glabel D_0805ffe4
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060014
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08060080
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：\x8f\x5c字ボタン右"
.balign 4, 0


@ Pattern
glabel D_080600c4
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08060148
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060184
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_08060220
.ascii "\n"
.ascii "これまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_0806025c
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return

.end
