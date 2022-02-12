asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a868 \n\
/* 0802a868 */ PUSH {R4-R7, LR} \n\
/* 0802a86a */ SUB SP, 0xC \n\
/* 0802a86c */ LDR R7, =D_030055d0 \n\
/* 0802a86e */ LDR R1, [R7] \n\
/* 0802a870 */ MOVS R3, 0xA9 @ Set R3 to 0xA9 \n\
/* 0802a872 */ LSLS R3, R3, 0x3 \n\
/* 0802a874 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0802a876 */ LDR R0, [R2] \n\
/* 0802a878 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a87a */ BNE branch_0802a890 \n\
/* 0802a87c */ LDR R0, =0x0000054c \n\
/* 0802a87e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802a880 */ LDR R0, [R1] \n\
/* 0802a882 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a884 */ BEQ branch_0802a8d8 \n\
/* 0802a886 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802a888 */ STR R0, [R2] \n\
/* 0802a88a */ LDR R0, [R1] \n\
/* 0802a88c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802a88e */ STR R0, [R1] \n\
 \n\
branch_0802a890: \n\
/* 0802a890 */ LDR R2, [R7] \n\
/* 0802a892 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802a894 */ LDR R0, [R1] \n\
/* 0802a896 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802a898 */ STR R0, [R1] \n\
/* 0802a89a */ LSLS R5, R0, 0x1 \n\
/* 0802a89c */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0802a89e */ LSLS R5, R5, 0x2 \n\
/* 0802a8a0 */ MOVS R3, 0xF1 @ Set R3 to 0xF1 \n\
/* 0802a8a2 */ LSLS R3, R3, 0x2 \n\
/* 0802a8a4 */ ADDS R5, R5, R3 @ Set R5 to R5 + R3 \n\
/* 0802a8a6 */ ADDS R5, R2, R5 @ Set R5 to R2 + R5 \n\
/* 0802a8a8 */ LDR R0, =D_03005380 \n\
/* 0802a8aa */ LDR R0, [R0] \n\
/* 0802a8ac */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a8ae */ LDRSH R1, [R5, R3] \n\
/* 0802a8b0 */ LDR R3, =D_089e2ed4 \n\
/* 0802a8b2 */ LDR R6, =0x0000054c \n\
/* 0802a8b4 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0802a8b6 */ LDR R2, [R2] \n\
/* 0802a8b8 */ LSLS R2, R2, 0x2 \n\
/* 0802a8ba */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802a8bc */ LDR R2, [R2] \n\
/* 0802a8be */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a8c0 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0802a8c2 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0802a8c4 */ STR R4, [SP] \n\
/* 0802a8c6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802a8c8 */ STR R4, [SP, 0x4] \n\
/* 0802a8ca */ STR R4, [SP, 0x8] \n\
/* 0802a8cc */ BL func_0804d8f8 \n\
/* 0802a8d0 */ LDR R0, [R7] \n\
/* 0802a8d2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802a8d4 */ LDR R0, [R0] \n\
/* 0802a8d6 */ STRH R0, [R5, 0x2] \n\
 \n\
branch_0802a8d8: \n\
/* 0802a8d8 */ ADD SP, 0xC \n\
/* 0802a8da */ POP {R4-R7} \n\
/* 0802a8dc */ POP {R0} \n\
/* 0802a8de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
