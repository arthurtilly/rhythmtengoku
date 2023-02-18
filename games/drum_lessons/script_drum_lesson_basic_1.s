.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_lessons/drum_studio_macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Basic 1) */


@ Dialogue
glabel D_080613e4
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_0806143c
    spawn_cue CUE_SNARE_R
    rest 24
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Pattern Start
glabel D_080614a8
    spawn_cue CUE_SNARE_R
    rest 21
    return


@ Dialogue
glabel D_080614cc
.ascii "\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_080614f4
    spawn_cue CUE_SNARE_R
    rest 24
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_08061578
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern Start
glabel D_080615a8
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 9
    return


@ Dialogue
glabel D_080615e4
.ascii "\n"
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08061614
    spawn_cue CUE_SNARE_R
    rest 24
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Pattern Start
glabel D_080616b0
    spawn_cue CUE_SNARE_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_SNARE_R
    rest 9
    return


@ Dialogue
glabel D_08061704
.ascii "\n"
.ascii "今回は、スネアドラムという\n"
.asciz "タイコをたたいてみましょう。\n"
.balign 4, 0


@ Dialogue
glabel D_08061740
.ascii "\n"
.ascii "Aボタンと\x8f\x5c字ボタンの左、\n"
.ascii "どちらでもスネアドラムを\n"
.asciz "たたくことができるヨ！"
.balign 4, 0


@ Dialogue
glabel D_0806178c
.ascii "\n"
.ascii "では　さっそくですが\n"
.asciz "レッスンをはじめまーす！\n"
.balign 4, 0


@ Dialogue
glabel D_080617bc
.ascii "\n"
.ascii "上で光っているランプは、\n"
.asciz "タイミングランプです。"
.balign 4, 0


@ Dialogue
glabel D_080617f0
.ascii "\n"
.ascii "まん中のミドリがジャスト！\n"
.ascii "それより左はハシリ気味、\n"
.asciz "右はモタリ気味です。"
.balign 4, 0


@ Dialogue
glabel D_0806183c
.ascii "\n"
.ascii "うまく　できないときは、\n"
.ascii "上のランプを見てズレを\n"
.asciz "チェックしてみてネ！"
.balign 4, 0


@ Dialogue
glabel D_08061884
.ascii "\n"
.asciz "では、つぎ行きまーす！"
.balign 4, 0


@ Dialogue
glabel D_0806189c
.ascii "\n"
.ascii "演奏が速くて困ったら\n"
.ascii "スタートボタンを\n"
.asciz "押してネ！すると…"
.balign 4, 0


@ Dialogue
glabel D_080618d8
.ascii "\n"
.ascii "演奏が、ゆっくりに\n"
.ascii "なるんだヨ！\n"
.asciz "参考にしてみてネ。\n"
.balign 4, 0


@ Dialogue
glabel D_08061910
.ascii "\n"
.ascii "もとのテンポに戻るには\n"
.ascii "再度スタートボタンを\n"
.asciz "押せばＯＫです。"
.balign 4, 0


@ Dialogue
glabel D_08061950
.ascii "\n"
.ascii "ちなみにスロー演奏中は\n"
.asciz "レッスンが進まないヨ。"
.balign 4, 0


@ Dialogue
glabel D_08061980
.ascii "\n"
.asciz "では、次いってみよう！"
.balign 4, 0

.end
