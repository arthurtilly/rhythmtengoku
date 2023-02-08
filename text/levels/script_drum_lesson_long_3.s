.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Long 3) */


@ Dialogue
glabel D_08063308
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08063360
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_08063414
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08063438
.ascii "\n"
.ascii "スネアドラムを\n"
.ascii "かさねてみるネ！\n"
.asciz "ノリノリだヨ！"
.balign 4, 0


@ Pattern
glabel D_08063468
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_0806354c
.ascii "\n"
.ascii "シンバルでキッチリと\n"
.ascii "まとめておこうネ！\n"
.asciz "これは、できるよネ？\n"
.balign 4, 0


@ Pattern Start
glabel D_0806358c
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 21
    return


@ Dialogue
glabel D_080635bc
.ascii "スネアのパターンを\n"
.ascii "ちょっとかえるネ。\n"
.ascii "できると楽しいヨ！\n"
.asciz "きっと。\n"
.balign 4, 0


@ Pattern
glabel D_08063600
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_08063708
.ascii "\n"
.ascii "１つだけ、音がふえるヨ。\n"
.ascii "いがいとムズい！！\n"
.asciz "がんばってネ！"
.balign 4, 0


@ Pattern
glabel D_08063744
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_08063870
.ascii "\n"
.ascii "またまた１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "できたらカッコよすぎ！"
.balign 4, 0


@ Pattern
glabel D_080638a8
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 12
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 12
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return

.end
