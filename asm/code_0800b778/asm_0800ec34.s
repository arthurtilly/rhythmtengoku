asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ec34 \n\
/* 0800ec34 */ PUSH {R4-R6, LR} \n\
/* 0800ec36 */ LDR R4, =D_030053c0 \n\
/* 0800ec38 */ LDRB R0, [R4, 0x2] \n\
/* 0800ec3a */ LSLS R0, R0, 0x1F \n\
/* 0800ec3c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ec3e */ BEQ branch_0800eca6 \n\
/* 0800ec40 */ BL func_0800c398 \n\
/* 0800ec44 */ MOVS R1, 0xC6 @ Set R1 to 0xC6 \n\
/* 0800ec46 */ LSLS R1, R1, 0x1 \n\
/* 0800ec48 */ ADDS R2, R4, R1 @ Set R2 to R4 + R1 \n\
/* 0800ec4a */ LDR R1, [R2] \n\
/* 0800ec4c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800ec4e */ STR R1, [R2] \n\
/* 0800ec50 */ MOVS R2, 0xC4 @ Set R2 to 0xC4 \n\
/* 0800ec52 */ LSLS R2, R2, 0x1 \n\
/* 0800ec54 */ ADDS R0, R4, R2 @ Set R0 to R4 + R2 \n\
/* 0800ec56 */ LDR R0, [R0] \n\
/* 0800ec58 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800ec5a */ BCC branch_0800ec70 \n\
/* 0800ec5c */ MOVS R6, 0xC2 @ Set R6 to 0xC2 \n\
/* 0800ec5e */ LSLS R6, R6, 0x1 \n\
/* 0800ec60 */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0800ec62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800ec64 */ LDRSH R0, [R0, R1] \n\
/* 0800ec66 */ BL scene_set_music_pitch \n\
/* 0800ec6a */ B branch_0800eca6 \n\
\n\
.ltorg \n\
 \n\
branch_0800ec70: \n\
/* 0800ec70 */ LSRS R3, R1, 0x8 \n\
/* 0800ec72 */ LSRS R1, R0, 0x8 \n\
/* 0800ec74 */ MOVS R2, 0xC1 @ Set R2 to 0xC1 \n\
/* 0800ec76 */ LSLS R2, R2, 0x1 \n\
/* 0800ec78 */ ADDS R5, R4, R2 @ Set R5 to R4 + R2 \n\
/* 0800ec7a */ MOVS R6, 0xC2 @ Set R6 to 0xC2 \n\
/* 0800ec7c */ LSLS R6, R6, 0x1 \n\
/* 0800ec7e */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0800ec80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ec82 */ LDRSH R0, [R0, R2] \n\
/* 0800ec84 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800ec86 */ LDRSH R2, [R5, R6] \n\
/* 0800ec88 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0800ec8a */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0800ec8c */ BL __divsi3 \n\
/* 0800ec90 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ec92 */ LDRH R0, [R5] \n\
/* 0800ec94 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800ec96 */ LSLS R0, R0, 0x10 \n\
/* 0800ec98 */ ASRS R0, R0, 0x10 \n\
/* 0800ec9a */ BL scene_set_music_pitch \n\
/* 0800ec9e */ LDRB R0, [R4, 0x2] \n\
/* 0800eca0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800eca2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800eca4 */ STRB R0, [R4, 0x2] \n\
 \n\
branch_0800eca6: \n\
/* 0800eca6 */ POP {R4-R6} \n\
/* 0800eca8 */ POP {R0} \n\
/* 0800ecaa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
