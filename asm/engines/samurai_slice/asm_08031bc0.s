asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08031bc0 \n\
/* 08031bc0 */ PUSH {R4-R6, LR} \n\
/* 08031bc2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08031bc4 */ LDR R6, =gCurrentEngineData \n\
/* 08031bc6 */ LDR R1, [R6] \n\
/* 08031bc8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08031bca */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08031bcc */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08031bce */ ANDS R4, R5 @ Set R4 to R4 & R5 \n\
/* 08031bd0 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08031bd2 */ BNE branch_08031bd6 \n\
/* 08031bd4 */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
 \n\
branch_08031bd6: \n\
/* 08031bd6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08031bd8 */ BL func_08031a6c \n\
/* 08031bdc */ LDR R1, [R6] \n\
/* 08031bde */ LDRB R0, [R1, 0x4] \n\
/* 08031be0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08031be2 */ BEQ branch_08031c42 \n\
/* 08031be4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08031be6 */ BNE branch_08031c42 \n\
/* 08031be8 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 08031bea */ LSLS R2, R2, 0x1 \n\
/* 08031bec */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08031bee */ LDRB R0, [R0] \n\
/* 08031bf0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08031bf2 */ BNE branch_08031c14 \n\
/* 08031bf4 */ LDR R4, =s_iai_frase1a_seqData \n\
/* 08031bf6 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08031bf8 */ BLS branch_08031c22 \n\
/* 08031bfa */ LDR R4, =s_iai_frase3a_seqData \n\
/* 08031bfc */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 08031bfe */ BHI branch_08031c22 \n\
/* 08031c00 */ LDR R4, =s_iai_frase2a_seqData \n\
/* 08031c02 */ B branch_08031c22 \n\
\n\
.ltorg \n\
 \n\
branch_08031c14: \n\
/* 08031c14 */ LDR R4, =s_iai_frase1b_seqData \n\
/* 08031c16 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08031c18 */ BLS branch_08031c22 \n\
/* 08031c1a */ LDR R4, =s_iai_frase3b_seqData \n\
/* 08031c1c */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 08031c1e */ BHI branch_08031c22 \n\
/* 08031c20 */ LDR R4, =s_iai_frase2b_seqData \n\
 \n\
branch_08031c22: \n\
/* 08031c22 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08031c24 */ BL play_sound \n\
/* 08031c28 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08031c2a */ BL get_beatscript_tempo \n\
/* 08031c2e */ LSLS R0, R0, 0x8 \n\
/* 08031c30 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08031c32 */ BL __udivsi3 \n\
/* 08031c36 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08031c38 */ LSLS R1, R1, 0x10 \n\
/* 08031c3a */ LSRS R1, R1, 0x10 \n\
/* 08031c3c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08031c3e */ BL set_soundplayer_speed \n\
 \n\
branch_08031c42: \n\
/* 08031c42 */ POP {R4-R6} \n\
/* 08031c44 */ POP {R0} \n\
/* 08031c46 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
