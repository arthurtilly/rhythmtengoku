asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003e00 \n\
/* 08003e00 */ PUSH {R4-R7, LR} \n\
/* 08003e02 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08003e04 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08003e06 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08003e08 */ PUSH {R5-R7} \n\
/* 08003e0a */ SUB SP, 0x4 \n\
/* 08003e0c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08003e0e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08003e10 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08003e12 */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 08003e14 */ LDR R0, [SP, 0x24] \n\
/* 08003e16 */ LDR R1, [SP, 0x28] \n\
/* 08003e18 */ LDR R2, [SP, 0x2C] \n\
/* 08003e1a */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08003e1c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08003e1e */ MULS R2, R1 @ Multiply R2 by R1 \n\
/* 08003e20 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08003e22 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08003e24 */ LSLS R0, R0, 0x5 \n\
/* 08003e26 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08003e28 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08003e2a */ CMP R6, R8 @ Compare R6 and R8 \n\
/* 08003e2c */ BCS branch_08003e54 \n\
/* 08003e2e */ LSLS R5, R5, 0x5 \n\
/* 08003e30 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003e32 */ LSLS R0, R0, 0x1 \n\
/* 08003e34 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08003e36: \n\
/* 08003e36 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08003e38 */ STR R1, [SP] \n\
/* 08003e3a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08003e3c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08003e3e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08003e40 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08003e42 */ BL func_0800186c \n\
/* 08003e46 */ ADDS R7, R7, R5 @ Set R7 to R7 + R5 \n\
/* 08003e48 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08003e4a */ LSLS R0, R2, 0x5 \n\
/* 08003e4c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08003e4e */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08003e50 */ CMP R6, R8 @ Compare R6 and R8 \n\
/* 08003e52 */ BCC branch_08003e36 \n\
 \n\
branch_08003e54: \n\
/* 08003e54 */ ADD SP, 0x4 \n\
/* 08003e56 */ POP {R3-R5} \n\
/* 08003e58 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003e5a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003e5c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003e5e */ POP {R4-R7} \n\
/* 08003e60 */ POP {R0} \n\
/* 08003e62 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
