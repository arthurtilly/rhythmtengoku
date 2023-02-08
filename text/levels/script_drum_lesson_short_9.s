.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 9) */


@ Dialogue
glabel D_0806090c
.ascii "よくきいてマネしてね。\n"
.ascii "好きなタイミングでどうぞ。\n"
.ascii "演奏を止めると、\n"
.asciz "お手本がきけるヨ！"
.balign 4, 0


@ Pattern
glabel D_08060964
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_080609b8
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_080609dc
.ascii "\n"
.ascii "キックを２回ずつだヨ！\n"
.ascii "できるかな？\n"
.asciz "ポイント：Bボタンだけで"
.balign 4, 0


@ Pattern
glabel D_08060a1c
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    return


@ Pattern Start
glabel D_08060ab8
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 3
    return


@ Dialogue
glabel D_08060af4
.ascii "さらに１カ所、\n"
.ascii "音がふえるヨ！\n"
.ascii "わかるかな？\n"
.asciz "ヒント：キックは前と同じ"
.balign 4, 0


@ Pattern
glabel D_08060b38
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    return


@ Dialogue
glabel D_08060be0
.ascii "\n"
.ascii "またまた１カ所、\n"
.ascii "音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060c10
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    return


@ Dialogue
glabel D_08060cd0
.ascii "\n"
.ascii "そしてまたなんと！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060d0c
    spawn_cue CUE_KICK_R
    rest 18
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    return


@ Dialogue
glabel D_08060de4
.ascii "\n"
.ascii "これまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern
glabel D_08060e20
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    return


@ Dialogue
glabel D_08060f10
.ascii "\n"
.ascii "またまたなんと！！\n"
.ascii "１カ所、音がふえるヨ！\n"
.asciz "わかるかな？\n"
.balign 4, 0


@ Pattern Start
glabel D_08060f4c
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 3
    return

.end
