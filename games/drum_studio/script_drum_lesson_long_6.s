.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_studio/macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Long 6) */


@ Dialogue
glabel D_08064874
.ascii "\n"
.ascii "まずは、おさらいです。\n"
.asciz "がんばってネ！"
.balign 4, 0


@ Pattern
glabel D_0806489c
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


@ Pattern Start
glabel D_08064ad0
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 3
    return


@ Dialogue
glabel D_08064b30
.ascii "\n"
.ascii "後半をかえてみます。\n"
.ascii "よ〜くきいて、\n"
.asciz "ちゃんとマネしてネ！\n"
.balign 4, 0


@ Pattern
glabel D_08064b6c
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
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
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


@ Dialogue
glabel D_08064d70
.ascii "\n"
.ascii "シンバルをかさねて\n"
.ascii "ハデにしてみよう！\n"
.asciz "できるかな？"
.balign 4, 0


@ Pattern
glabel D_08064da4
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
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
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


@ Dialogue
glabel D_08064fd8
.ascii "\n"
.ascii "タムも入れて、もっと\n"
.ascii "ハデにしちゃおう！\n"
.asciz "イケイケ〜！"
.balign 4, 0


@ Pattern
glabel D_08065010
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
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_TOM
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
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


@ Dialogue
glabel D_08065268
.ascii "\n"
.ascii "さっき入れたタムを\n"
.ascii "ロールにかえてみよう！\n"
.asciz "シブすぎるかも！！"
.balign 4, 0


@ Pattern
glabel D_080652a8
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
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_ROLL
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_ROLL
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
    rest 6
    spawn_cue CUE_ROLL
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_CRASH
    rest 6
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


@ Dialogue
glabel D_08065500
.ascii "\n"
.ascii "今回は、\n"
.ascii "１つ前のレッスンを\n"
.asciz "応用してみます。"
.balign 4, 0


@ Dialogue
glabel D_08065530
.ascii "\n"
.ascii "１つ前のレッスンを\n"
.ascii "クリアしてから、\n"
.asciz "挑戦してネ！"
.balign 4, 0


@ Dialogue
glabel D_08065564
.ascii "\n"
.asciz "では、はじめまーす！"
.balign 4, 0

.end
