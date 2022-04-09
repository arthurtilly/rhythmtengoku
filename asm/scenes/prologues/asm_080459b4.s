asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080459b4 \n\
/* 080459b4 */ PUSH {R4-R6, LR} \n\
/* 080459b6 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080459b8 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080459ba */ PUSH {R5, R6} \n\
/* 080459bc */ SUB SP, 0x14 \n\
/* 080459be */ LDR R1, =D_030055d0 \n\
/* 080459c0 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080459c2 */ LDR R1, [R1] \n\
/* 080459c4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080459c6 */ STRB R0, [R1] \n\
/* 080459c8 */ BL func_08045984 \n\
/* 080459cc */ BL func_0800e0ec \n\
/* 080459d0 */ STR R4, [SP] \n\
/* 080459d2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080459d4 */ STR R0, [SP, 0x4] \n\
/* 080459d6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080459d8 */ STR R0, [SP, 0x8] \n\
/* 080459da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080459dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080459de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080459e0 */ BL func_0800e0a0 \n\
/* 080459e4 */ LDR R2, =D_03005380 \n\
/* 080459e6 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080459e8 */ LDR R0, [R2] \n\
/* 080459ea */ LDR R1, =D_088ae3e4 \n\
/* 080459ec */ MOVS R6, 0x40 @ Set R6 to 0x40 \n\
/* 080459ee */ STR R6, [SP] \n\
/* 080459f0 */ STR R4, [SP, 0x4] \n\
/* 080459f2 */ STR R4, [SP, 0x8] \n\
/* 080459f4 */ MOVS R5, 0x7F @ Set R5 to 0x7F \n\
/* 080459f6 */ STR R5, [SP, 0xC] \n\
/* 080459f8 */ STR R4, [SP, 0x10] \n\
/* 080459fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080459fc */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 080459fe */ BL func_0804d160 \n\
/* 08045a02 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08045a04 */ LDR R1, [R2] \n\
/* 08045a06 */ STRH R0, [R1, 0x2] \n\
/* 08045a08 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08045a0a */ LDR R0, [R1] \n\
/* 08045a0c */ LDR R1, =D_088ae3f4 \n\
/* 08045a0e */ STR R6, [SP] \n\
/* 08045a10 */ STR R4, [SP, 0x4] \n\
/* 08045a12 */ STR R4, [SP, 0x8] \n\
/* 08045a14 */ STR R5, [SP, 0xC] \n\
/* 08045a16 */ STR R4, [SP, 0x10] \n\
/* 08045a18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045a1a */ MOVS R3, 0x88 @ Set R3 to 0x88 \n\
/* 08045a1c */ BL func_0804d160 \n\
/* 08045a20 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08045a22 */ LDR R1, [R2] \n\
/* 08045a24 */ STRH R0, [R1, 0x4] \n\
/* 08045a26 */ ADD SP, 0x14 \n\
/* 08045a28 */ POP {R3, R4} \n\
/* 08045a2a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08045a2c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08045a2e */ POP {R4-R6} \n\
/* 08045a30 */ POP {R0} \n\
/* 08045a32 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
