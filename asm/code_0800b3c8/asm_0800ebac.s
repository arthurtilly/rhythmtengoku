asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ebac \n\
/* 0800ebac */ PUSH {R4-R6, LR} \n\
/* 0800ebae */ LDR R5, =D_030053c0 \n\
/* 0800ebb0 */ MOVS R4, 0xB9 @ Set R4 to 0xB9 \n\
/* 0800ebb2 */ LSLS R4, R4, 0x1 \n\
/* 0800ebb4 */ ADDS R3, R5, R4 @ Set R3 to R5 + R4 \n\
/* 0800ebb6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800ebb8 */ STRH R0, [R3] \n\
/* 0800ebba */ MOVS R6, 0xBA @ Set R6 to 0xBA \n\
/* 0800ebbc */ LSLS R6, R6, 0x1 \n\
/* 0800ebbe */ ADDS R3, R5, R6 @ Set R3 to R5 + R6 \n\
/* 0800ebc0 */ STRH R1, [R3] \n\
/* 0800ebc2 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0800ebc4 */ LSLS R3, R3, 0x1 \n\
/* 0800ebc6 */ ADDS R1, R5, R3 @ Set R1 to R5 + R3 \n\
/* 0800ebc8 */ LSLS R2, R2, 0x8 \n\
/* 0800ebca */ STR R2, [R1] \n\
/* 0800ebcc */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 0800ebce */ ADDS R1, R5, R6 @ Set R1 to R5 + R6 \n\
/* 0800ebd0 */ STR R4, [R1] \n\
/* 0800ebd2 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0800ebd4 */ LSLS R1, R1, 0x1 \n\
/* 0800ebd6 */ ADDS R2, R5, R1 @ Set R2 to R5 + R1 \n\
/* 0800ebd8 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0800ebda */ STRH R1, [R2] \n\
/* 0800ebdc */ LSLS R0, R0, 0x10 \n\
/* 0800ebde */ LSRS R0, R0, 0x10 \n\
/* 0800ebe0 */ BL func_0800bdf8 \n\
/* 0800ebe4 */ LDRB R0, [R5, 0x1] \n\
/* 0800ebe6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800ebe8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800ebea */ STRB R0, [R5, 0x1] \n\
/* 0800ebec */ POP {R4-R6} \n\
/* 0800ebee */ POP {R0} \n\
/* 0800ebf0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
