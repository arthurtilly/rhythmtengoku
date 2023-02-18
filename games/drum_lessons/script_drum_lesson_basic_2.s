.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "games/drum_lessons/drum_studio_macros.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Basic 2) */


@ Dialogue
glabel D_08061998
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_080619f0
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_08061a44
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08061a68
.ascii "\n"
.ascii "１カ所、音が変わるヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_08061a90
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08061ae4
.ascii "\n"
.ascii "さらに１カ所、\n"
.ascii "音が変わるヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_08061b10
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08061b64
.ascii "\n"
.ascii "こんどは１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08061b94
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
glabel D_08061c00
.ascii "\n"
.ascii "さらに１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern
glabel D_08061c2c
    spawn_cue CUE_SNARE_L
    rest 24
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Dialogue
glabel D_08061cb0
.ascii "\n"
.ascii "またまた１つ、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？"
.balign 4, 0


@ Pattern Start
glabel D_08061cdc
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 9
    return


@ Dialogue
glabel D_08061d18
.ascii "今回は、バスドラムと\n"
.ascii "スネアドラムという、\n"
.ascii "２つのタイコを使って\n"
.asciz "レッスンをしましょう。"
.balign 4, 0


@ Dialogue
glabel D_08061d70
.ascii "\n"
.ascii "Bボタンと\x8f\x5c字ボタンの下、\n"
.ascii "どちらでもバスドラムを\n"
.asciz "たたくことができるヨ！"
.balign 4, 0


@ Dialogue
glabel D_08061dbc
.ascii "\n"
.ascii "しってると思うけど\n"
.ascii "スネアドラムはAボタンと\n"
.asciz "\x8f\x5c字ボタンの左だからネ。"
.balign 4, 0


@ Dialogue
glabel D_08061e04
.ascii "\n"
.ascii "では　ぼちぼち\n"
.asciz "はじめますネ〜\n"
.balign 4, 0

.end
