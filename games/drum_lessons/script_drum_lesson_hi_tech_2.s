.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_lessons/drum_studio_macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Hi-Tech 2) */


@ Dialogue
glabel D_08065f9c
.ascii "\n"
.ascii "まずは、おさらいです。\n"
.asciz "がんばってネ！"
.balign 4, 0


@ Pattern
glabel D_08065fc4
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
    return


@ Pattern Start
glabel D_0805f7e0
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
glabel D_08066258
.ascii "\n"
.ascii "ここからが勝負です！\n"
.ascii "よ〜くきいて、\n"
.asciz "ちゃんとマネしてネ！\n"
.balign 4, 0


@ Pattern
glabel D_08066294
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08066480
.ascii "\n"
.ascii "バスとスネアを\n"
.ascii "ちょっと　たすヨ！\n"
.asciz "できるかな？"
.balign 4, 0


@ Pattern
glabel D_080664b0
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_080666c0
.ascii "\n"
.ascii "バスドラムを１つ\n"
.ascii "ふやしてみるヨ。\n"
.asciz "がんばって！"
.balign 4, 0


@ Pattern
glabel D_080666f0
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08066918
.ascii "さらに、またまた\n"
.ascii "バスとスネアを追加！！\n"
.ascii "キミならできる！\n"
.asciz "がんばれ〜！！\n"
.balign 4, 0


@ Pattern
glabel D_08066964
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08066ba4
.ascii "\n"
.ascii "バスドラムを１つ\n"
.ascii "ふやしてみるヨ。\n"
.asciz "キメてネ！！"
.balign 4, 0


@ Pattern
glabel D_08066bd4
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08066e20
.ascii "さっきのバスドラに\n"
.ascii "シンバルをかさねるヨ！\n"
.ascii "これは、ムズイ！！\n"
.asciz "ファイトー！！"
.balign 4, 0


@ Pattern
glabel D_08066e6c
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    spawn_cue CUE_SPLASH
    rest 6
    rest 6
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_080670c4
.ascii "\n"
.ascii "これまたムズイところに\n"
.ascii "スネアを１つ追加！！\n"
.asciz "もう、いくしかない！！！"
.balign 4, 0


@ Pattern
glabel D_0806710c
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    spawn_cue CUE_SPLASH
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08067370
.ascii "これで　さいご！\n"
.ascii "タムを１つ追加するヨ！\n"
.ascii "流れるようなイカした\n"
.asciz "プレイをよろしくです！！"
.balign 4, 0


@ Pattern
glabel D_080673c8
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
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    spawn_cue CUE_KICK_L
    rest 3
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    spawn_cue CUE_SPLASH
    rest 6
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    return


@ Dialogue
glabel D_08067638
.ascii "\n"
.ascii "今回は、\n"
.ascii "１つ前のレッスンを\n"
.asciz "応用してみます。"
.balign 4, 0


@ Dialogue
glabel D_08067668
.ascii "\n"
.ascii "１つ前のレッスンを\n"
.ascii "クリアしてから、\n"
.asciz "挑戦してネ！"
.balign 4, 0


@ Dialogue
glabel D_0806769c
.ascii "\n"
.asciz "では、はじめまーす！"
.balign 4, 0

.end
