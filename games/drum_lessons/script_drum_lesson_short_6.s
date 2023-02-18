.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_lessons/drum_studio_macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 6) */


@ Dialogue
glabel D_08060fa0
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08060ff8
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_0806104c
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08061070
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：キックは前と同じ"
.balign 4, 0


@ Pattern
glabel D_080610b0
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Dialogue
glabel D_08061110
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：キックは前と同じ"
.balign 4, 0


@ Pattern
glabel D_08061154
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Dialogue
glabel D_080611c0
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：\x8f\x5c字ボタン上"
.balign 4, 0


@ Pattern
glabel D_08061204
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_HIHAT
    rest 12
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Dialogue
glabel D_08061288
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern Start
glabel D_080612c4
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_HIHAT
    rest 9
    return


@ Dialogue
glabel D_08061300
.ascii "\n"
.ascii "これまたなんと！\n"
.ascii "ノリノリだヨ！\n"
.asciz "できるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08061330
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_HIHAT
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_HIHAT
    rest 12
    spawn_cue CUE_SNARE_L
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_HIHAT
    rest 12
    return

.end
