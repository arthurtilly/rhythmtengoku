.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/quiz_show.inc"

load_quiz_show_labels

.set END_OF_TABLE, 0


/* Script Data - Quiz Show (Endless) */


@ Script Table
glabel D_08068320
    .word D_08a59c58
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068328
    qz_event06 192
    rest 192
    return


@ Pattern
glabel D_08068358
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6

    switch_random INT8, 3
        case 0
            qz_event02 0
            rest 8
            qz_event02 0
            rest 8
            qz_event02 0
            rest 8
            break

        case 1
            qz_event02 0
            rest 6
            rest 6
            rest 6
            qz_event02 1
            rest 6
            break

        case 2
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            rest 6
            qz_event02 1
            rest 6
            break
    end_switch

    switch_random INT8, 3
        case 0
            qz_event02 0
            rest 12
            rest 6
            qz_event02 0
            rest 12
            rest 6
            qz_event02 0
            rest 12
            rest 6
            break

        case 1
            qz_event02 0
            rest 6
            rest 6
            qz_event02 0
            rest 6
            rest 6
            break

        case 2
            qz_event02 0
            rest 12
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            qz_event02 0
            rest 12
            break
    end_switch

    qz_event0C 0x108
    return


@ Pattern
glabel D_080687f0
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 8
    qz_event02 0
    rest 8
    qz_event02 0
    rest 8
    qz_event02 0
    rest 6
    rest 6
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    return


@ Script Table
glabel D_080689b8
    .word D_08a59c64
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_080689c0
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 8
    qz_event02 0
    rest 8
    qz_event02 0
    rest 8
    qz_event02 0
    rest 24
    return


@ Script Table
glabel D_08068b34
    .word D_08a59c70
    .word END_OF_TABLE
.balign 4, 0


@ Script Table
glabel D_08068b3c
    .word D_08a59c7c
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068b44
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 24
    return


@ Script Table
glabel D_08068c94
    .word D_08a59c88
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068c9c
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08068db0
    .word D_08a59c94
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068db8
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08068ea8
    .word D_08a59ca0
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068eb0
    rest 24
    rest 24
    qz_event02 0
    rest 24
    qz_event02 0
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08068f70
    .word D_08a59cac
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08068f78
    rest 24
    rest 24
    qz_event02 0
    rest 24
    qz_event02 0
    rest 24
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08069014
    .word D_08a59cc4
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_0806901c
    rest 24
    rest 24

    switch_random INT8, 2
        case 0
            qz_event02 0
            rest 24
            break

        case 1
            qz_event02 0
            rest 12
            qz_event02 0
            rest 12
            break
    end_switch

    switch_random INT8, 3
        case 0
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            qz_event02 0
            rest 12
            break

        case 1
            qz_event02 0
            rest 12
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            break

        case 2
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            break
    end_switch

    switch_random INT8, 3
        case 0
            qz_event02 0
            rest 12
            qz_event02 0
            rest 12
            break

        case 1
            qz_event02 0
            rest 12
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            break

        case 2
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            qz_event02 0
            rest 6
            qz_event02 1
            rest 6
            break
    end_switch

    qz_event0C 0x108
    return


@ Pattern
glabel D_0806949c
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 24
    return


@ Script Table
glabel D_08069610
    .word D_08a59cd0
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08069618
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 24
    return


@ Script Table
glabel D_08069768
    .word D_08a59cdc
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_08069770
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 12
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 6
    qz_event02 1
    rest 6
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08069884
    .word D_08a59ce8
    .word END_OF_TABLE
.balign 4, 0


@ Pattern
glabel D_0806988c
    rest 24
    rest 24
    qz_event02 0
    rest 12
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 12
    qz_event02 0
    rest 24
    rest 24
    return


@ Script Table
glabel D_08069958
    .word D_08a59cf4
    .word END_OF_TABLE
.balign 4, 0


@ Text
glabel D_08069960
.ascii "\n"
.asciz "残念！！"
.balign 4, 0


@ Text
glabel D_0806996c
.ascii "また挑戦して下さい。\n"
.asciz "さようなら。"
.balign 4, 0


@ Text
glabel D_08069990
.ascii "こんばんは。\n"
.asciz "クイズナンダダ！？の時間です。"
.balign 4, 0


@ Text
glabel D_080699bc
.ascii "今回は、　なんと\n"
.asciz "スペシャルです！"
.balign 4, 0


@ Text
glabel D_080699e0
.ascii "では　さっそく\n"
.asciz "いってみましょう！"
.balign 4, 0


@ Text
glabel D_08069a04
.ascii "\n"
.asciz "そこまで！！"
.balign 4, 0


@ Text
glabel D_08069a14
.ascii "\n"
.asciz "さて、 正解は？"
.balign 4, 0


@ Text
glabel D_08069a28
.ascii "\n"
.asciz "正解！！"
.balign 4, 0


@ Text
glabel D_08069a34
.ascii "\n"
.asciz "では、　つぎです。"
.balign 4, 0

.end
