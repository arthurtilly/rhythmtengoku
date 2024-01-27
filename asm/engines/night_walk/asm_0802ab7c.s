asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start play_drumtech_note \n\
/* 0802ab7c */ PUSH {R4-R7, LR} \n\
/* 0802ab7e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802ab80 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802ab82 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0802ab84 */ LDR R0, =0x0000fffe \n\
/* 0802ab86 */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0802ab88 */ BEQ branch_0802aba8 \n\
/* 0802ab8a */ LDR R0, =0x0000ffff \n\
/* 0802ab8c */ CMP R3, R0 @ Check R3 - R0 \n\
/* 0802ab8e */ BNE branch_0802abb8 \n\
/* 0802ab90 */ LDR R0, =D_03001568 \n\
/* 0802ab92 */ LDR R0, [R0] \n\
/* 0802ab94 */ MOVS R1, 0xCD @ Set R1 to 0xCD \n\
/* 0802ab96 */ LSLS R1, R1, 0x2 \n\
/* 0802ab98 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802ab9a */ LDR R1, [R0] \n\
/* 0802ab9c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802ab9e */ BEQ branch_0802aba8 \n\
/* 0802aba0 */ LSLS R0, R7, 0x10 \n\
/* 0802aba2 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0802aba4 */ BL _call_via_r1 \n\
 \n\
branch_0802aba8: \n\
/* 0802aba8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802abaa */ B branch_0802ac38 \n\
\n\
.ltorg \n\
 \n\
branch_0802abb8: \n\
/* 0802abb8 */ LDR R0, =D_03001568 \n\
/* 0802abba */ LDR R1, [R0] \n\
/* 0802abbc */ LSLS R0, R3, 0x1 \n\
/* 0802abbe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802abc0 */ LSLS R0, R0, 0x2 \n\
/* 0802abc2 */ LDR R1, [R1, 0xC] \n\
/* 0802abc4 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 0802abc6 */ LDR R2, =sound_player_table \n\
/* 0802abc8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802abca */ LDRSB R1, [R5, R1] \n\
/* 0802abcc */ LSLS R0, R1, 0x1 \n\
/* 0802abce */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802abd0 */ LSLS R0, R0, 0x2 \n\
/* 0802abd2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802abd4 */ LDR R0, [R0] \n\
/* 0802abd6 */ BL stop_soundplayer \n\
/* 0802abda */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802abdc */ LDRSB R0, [R5, R0] \n\
/* 0802abde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802abe0 */ BGE branch_0802abf4 \n\
/* 0802abe2 */ LDR R0, [R5, 0x8] \n\
/* 0802abe4 */ BL play_sound \n\
/* 0802abe8 */ B branch_0802abfe \n\
\n\
.ltorg \n\
 \n\
branch_0802abf4: \n\
/* 0802abf4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802abf6 */ LDRSB R0, [R5, R0] \n\
/* 0802abf8 */ LDR R1, [R5, 0x8] \n\
/* 0802abfa */ BL play_sound_in_player \n\
 \n\
branch_0802abfe: \n\
/* 0802abfe */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802ac00 */ LDRH R0, [R5, 0x2] \n\
/* 0802ac02 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802ac04 */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 0802ac06 */ LDR R4, =D_03001568 \n\
/* 0802ac08 */ LDR R0, [R4] \n\
/* 0802ac0a */ MOVS R2, 0xCC @ Set R2 to 0xCC \n\
/* 0802ac0c */ LSLS R2, R2, 0x2 \n\
/* 0802ac0e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802ac10 */ LDRH R0, [R0] \n\
/* 0802ac12 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0802ac14 */ LSRS R1, R1, 0x10 \n\
/* 0802ac16 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802ac18 */ BL set_soundplayer_volume \n\
/* 0802ac1c */ LDRH R1, [R5, 0x4] \n\
/* 0802ac1e */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802ac20 */ LSLS R1, R1, 0x10 \n\
/* 0802ac22 */ ASRS R1, R1, 0x10 \n\
/* 0802ac24 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0802ac26 */ BL set_soundplayer_pitch \n\
/* 0802ac2a */ LDR R0, [R4] \n\
/* 0802ac2c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ac2e */ LDRSB R1, [R5, R1] \n\
/* 0802ac30 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802ac32 */ LDRB R1, [R5, 0x1] \n\
/* 0802ac34 */ STRB R1, [R0] \n\
/* 0802ac36 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
 \n\
branch_0802ac38: \n\
/* 0802ac38 */ POP {R4-R7} \n\
/* 0802ac3a */ POP {R1} \n\
/* 0802ac3c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
