asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e99c \n\
/* 0802e99c */ PUSH {R4-R7, LR} \n\
/* 0802e99e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802e9a0 */ PUSH {R7} \n\
/* 0802e9a2 */ SUB SP, 0x1C \n\
/* 0802e9a4 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802e9a6 */ LDR R0, =D_030055d0 \n\
/* 0802e9a8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802e9aa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802e9ac */ MOVS R6, 0x24 @ Set R6 to 0x24 \n\
 \n\
branch_0802e9ae: \n\
/* 0802e9ae */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802e9b0 */ LDR R4, [R0] \n\
/* 0802e9b2 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802e9b4 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 0802e9b6 */ LSLS R0, R0, 0x7 \n\
/* 0802e9b8 */ STR R0, [SP] \n\
/* 0802e9ba */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802e9bc */ LSLS R0, R0, 0x1 \n\
/* 0802e9be */ STR R0, [SP, 0x4] \n\
/* 0802e9c0 */ LDR R0, =0xfffffe00 \n\
/* 0802e9c2 */ STR R0, [SP, 0x8] \n\
/* 0802e9c4 */ STR R5, [SP, 0xC] \n\
/* 0802e9c6 */ STR R5, [SP, 0x10] \n\
/* 0802e9c8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802e9ca */ LSLS R0, R0, 0x8 \n\
/* 0802e9cc */ STR R0, [SP, 0x14] \n\
/* 0802e9ce */ STR R5, [SP, 0x18] \n\
/* 0802e9d0 */ LDR R0, =D_088e88e0 \n\
/* 0802e9d2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e9d4 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0802e9d6 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802e9d8 */ BL func_0800fa6c \n\
/* 0802e9dc */ STR R0, [R4] \n\
/* 0802e9de */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e9e0 */ BL func_0800feec \n\
/* 0802e9e4 */ LDR R0, [R4] \n\
/* 0802e9e6 */ MOVS R1, 0x4C @ Set R1 to 0x4C \n\
/* 0802e9e8 */ BL func_0800fea8 \n\
/* 0802e9ec */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0802e9ee */ LSLS R0, R0, 0x8 \n\
/* 0802e9f0 */ STR R0, [R4, 0x4] \n\
/* 0802e9f2 */ STR R5, [R4, 0x8] \n\
/* 0802e9f4 */ ADDS R6, 0x10 @ Add 0x10 to R6 \n\
/* 0802e9f6 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0802e9f8 */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 0802e9fa */ BLS branch_0802e9ae \n\
/* 0802e9fc */ LDR R0, =D_030055d0 \n\
/* 0802e9fe */ LDR R0, [R0] \n\
/* 0802ea00 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0802ea02 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ea04 */ STRB R1, [R0] \n\
/* 0802ea06 */ ADD SP, 0x1C \n\
/* 0802ea08 */ POP {R3} \n\
/* 0802ea0a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802ea0c */ POP {R4-R7} \n\
/* 0802ea0e */ POP {R0} \n\
/* 0802ea10 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
