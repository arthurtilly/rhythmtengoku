asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e0a0 \n\
/* 0800e0a0 */ PUSH {R4-R7, LR} \n\
/* 0800e0a2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800e0a4 */ PUSH {R7} \n\
/* 0800e0a6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800e0a8 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800e0aa */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800e0ac */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0800e0ae */ LDR R4, [SP, 0x18] \n\
/* 0800e0b0 */ LDR R5, [SP, 0x1C] \n\
/* 0800e0b2 */ LDR R6, [SP, 0x20] \n\
/* 0800e0b4 */ LSLS R1, R1, 0x10 \n\
/* 0800e0b6 */ ASRS R1, R1, 0x10 \n\
/* 0800e0b8 */ LSLS R2, R2, 0x10 \n\
/* 0800e0ba */ ASRS R2, R2, 0x10 \n\
/* 0800e0bc */ BL func_0800e058 \n\
/* 0800e0c0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800e0c2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800e0c4 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800e0c6 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 0800e0c8 */ BL func_0800e068 \n\
/* 0800e0cc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800e0ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e0d0 */ BEQ branch_0800e0da \n\
/* 0800e0d2 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800e0d4 */ BL func_0800e030 \n\
/* 0800e0d8 */ B branch_0800e0e0 \n\
 \n\
branch_0800e0da: \n\
/* 0800e0da */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800e0dc */ BL func_0800e044 \n\
 \n\
branch_0800e0e0: \n\
/* 0800e0e0 */ POP {R3} \n\
/* 0800e0e2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e0e4 */ POP {R4-R7} \n\
/* 0800e0e6 */ POP {R0} \n\
/* 0800e0e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
