asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ecac \n\
/* 0800ecac */ PUSH {R4-R6, LR} \n\
/* 0800ecae */ LDR R5, =D_030053c0 \n\
/* 0800ecb0 */ MOVS R4, 0xC1 @ Set R4 to 0xC1 \n\
/* 0800ecb2 */ LSLS R4, R4, 0x1 \n\
/* 0800ecb4 */ ADDS R3, R5, R4 @ Set R3 to R5 + R4 \n\
/* 0800ecb6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800ecb8 */ STRH R0, [R3] \n\
/* 0800ecba */ MOVS R6, 0xC2 @ Set R6 to 0xC2 \n\
/* 0800ecbc */ LSLS R6, R6, 0x1 \n\
/* 0800ecbe */ ADDS R3, R5, R6 @ Set R3 to R5 + R6 \n\
/* 0800ecc0 */ STRH R1, [R3] \n\
/* 0800ecc2 */ MOVS R3, 0xC4 @ Set R3 to 0xC4 \n\
/* 0800ecc4 */ LSLS R3, R3, 0x1 \n\
/* 0800ecc6 */ ADDS R1, R5, R3 @ Set R1 to R5 + R3 \n\
/* 0800ecc8 */ LSLS R2, R2, 0x8 \n\
/* 0800ecca */ STR R2, [R1] \n\
/* 0800eccc */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 0800ecce */ ADDS R1, R5, R6 @ Set R1 to R5 + R6 \n\
/* 0800ecd0 */ STR R4, [R1] \n\
/* 0800ecd2 */ LSLS R0, R0, 0x10 \n\
/* 0800ecd4 */ ASRS R0, R0, 0x10 \n\
/* 0800ecd6 */ BL func_0800c088 \n\
/* 0800ecda */ LDRB R0, [R5, 0x2] \n\
/* 0800ecdc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800ecde */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800ece0 */ STRB R0, [R5, 0x2] \n\
/* 0800ece2 */ POP {R4-R6} \n\
/* 0800ece4 */ POP {R0} \n\
/* 0800ece6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
