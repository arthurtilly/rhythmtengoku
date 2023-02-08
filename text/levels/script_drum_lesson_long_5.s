.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Long 5) */


@ Dialogue
glabel D_08063e10
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08063e68
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    return


@ Pattern Start
glabel D_08064084
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 3
    return


@ Dialogue
glabel D_080640d8
.ascii "\n"
.ascii "スネアとシンバルで\n"
.ascii "きっちり、まとめよう！\n"
.asciz "がんばって！\n"
.balign 4, 0


@ Pattern
glabel D_08064114
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    return


@ Pattern Start
glabel D_0806433c
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 3
    return


@ Dialogue
glabel D_0806439c
.ascii "\n"
.ascii "１ヵ所だけ、スネアを\n"
.ascii "タムにかえてみるヨ。\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_080643d4
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    return


@ Dialogue
glabel D_080645fc
.ascii "\n"
.ascii "さいごにスネアをもう１つ！\n"
.ascii "手順をよく考えてみてネ。\n"
.asciz "がんばれ～！"
.balign 4, 0


@ Pattern
glabel D_08064640
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return

.end
