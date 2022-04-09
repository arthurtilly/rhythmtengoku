asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a090 \n\
/* 0800a090 */ PUSH {R4-R6, LR} \n\
/* 0800a092 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800a094 */ PUSH {R6} \n\
/* 0800a096 */ SUB SP, 0x4 \n\
/* 0800a098 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a09a */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800a09c */ LDR R4, [SP, 0x18] \n\
/* 0800a09e */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800a0a0 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0800a0a2 */ LSLS R0, R4, 0x4 \n\
/* 0800a0a4 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800a0a6 */ LSLS R0, R4, 0x8 \n\
/* 0800a0a8 */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800a0aa */ LSLS R0, R4, 0x10 \n\
/* 0800a0ac */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0800a0ae */ LSLS R1, R1, 0x5 \n\
/* 0800a0b0 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 0800a0b2 */ LSLS R5, R5, 0x5 \n\
/* 0800a0b4 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0800a0b6 */ LSLS R0, R0, 0x13 \n\
/* 0800a0b8 */ ADDS R1, R5, R0 @ Set R1 to R5 + R0 \n\
/* 0800a0ba */ LSLS R6, R6, 0x5 \n\
/* 0800a0bc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800a0be */ LSLS R0, R0, 0x2 \n\
/* 0800a0c0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800a0c2 */ STR R0, [SP] \n\
/* 0800a0c4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a0c6 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800a0c8 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800a0ca */ BL func_080018e0 \n\
/* 0800a0ce */ LDR R0, =D_06000400 \n\
/* 0800a0d0 */ ADDS R1, R5, R0 @ Set R1 to R5 + R0 \n\
/* 0800a0d2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800a0d4 */ STR R0, [SP] \n\
/* 0800a0d6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a0d8 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800a0da */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800a0dc */ BL func_080018e0 \n\
/* 0800a0e0 */ ADD SP, 0x4 \n\
/* 0800a0e2 */ POP {R3} \n\
/* 0800a0e4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800a0e6 */ POP {R4-R6} \n\
/* 0800a0e8 */ POP {R0} \n\
/* 0800a0ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
