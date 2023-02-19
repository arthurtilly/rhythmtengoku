.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_studio/macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Hi-Tech 1) */


@ Dialogue
glabel D_0806557c
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_080655d4
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    return


@ Pattern Start
glabel D_080657cc
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    return


@ Dialogue
glabel D_0806582c
.ascii "\n"
.ascii "ハイハットをいれて\n"
.asciz "カッコよくするヨ！\n"
.balign 4, 0


@ Pattern
glabel D_08065854
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    return


@ Pattern Start
glabel D_08065a64
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    return


@ Dialogue
glabel D_08065ad0
.ascii "\n"
.ascii "さらに、もう少し\n"
.ascii "ハイハットをいれて\n"
.asciz "カッコよくするヨ！\n"
.balign 4, 0


@ Pattern
glabel D_08065b0c
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    return


@ Dialogue
glabel D_08065d34
.ascii "\n"
.ascii "さいごにスネアを\n"
.ascii "１つ追加しちゃうヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_08065d68
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_HIHAT
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_TOM
    rest 6
    rest 6
    return

.end
