asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042864 \n\
/* 08042864 */ PUSH {R4-R7, LR} \n\
/* 08042866 */ SUB SP, 0x14 \n\
/* 08042868 */ LDR R5, =D_030055d0 \n\
/* 0804286a */ LDR R0, [R5] \n\
/* 0804286c */ LDRB R0, [R0] \n\
/* 0804286e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08042870 */ BNE branch_0804290e \n\
/* 08042872 */ LDR R0, =D_03005380 \n\
/* 08042874 */ LDR R0, [R0] \n\
/* 08042876 */ LDR R1, =D_08931fe4 \n\
/* 08042878 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0804287a */ STR R2, [SP] \n\
/* 0804287c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804287e */ LSLS R2, R2, 0x4 \n\
/* 08042880 */ STR R2, [SP, 0x4] \n\
/* 08042882 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042884 */ STR R2, [SP, 0x8] \n\
/* 08042886 */ STR R2, [SP, 0xC] \n\
/* 08042888 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804288a */ LSLS R2, R2, 0x8 \n\
/* 0804288c */ STR R2, [SP, 0x10] \n\
/* 0804288e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08042890 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08042892 */ BL func_0804d160 \n\
/* 08042896 */ LDR R1, [R5] \n\
/* 08042898 */ LDR R2, =0x21e \n\
/* 0804289a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804289c */ STRH R0, [R1] \n\
/* 0804289e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080428a0 */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 080428a2 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
 \n\
branch_080428a4: \n\
/* 080428a4 */ LDR R7, =D_03005380 \n\
/* 080428a6 */ LDR R0, [R7] \n\
/* 080428a8 */ LDR R1, [R6] \n\
/* 080428aa */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080428ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080428ae */ LDRSH R1, [R1, R2] \n\
/* 080428b0 */ BL func_0804d3cc \n\
/* 080428b4 */ LDR R1, [R6] \n\
/* 080428b6 */ LSLS R2, R4, 0x1 \n\
/* 080428b8 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080428ba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080428bc */ STRH R0, [R1] \n\
/* 080428be */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080428c0 */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 080428c2 */ BLS branch_080428a4 \n\
/* 080428c4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080428c6 */ LDR R5, =D_030055d0 \n\
/* 080428c8 */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 080428ca */ LDR R3, =0x246 \n\
/* 080428cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080428ce: \n\
/* 080428ce */ LDR R0, [R6] \n\
/* 080428d0 */ LSLS R1, R4, 0x1 \n\
/* 080428d2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080428d4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080428d6 */ STRH R2, [R0] \n\
/* 080428d8 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080428da */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 080428dc */ BLS branch_080428ce \n\
/* 080428de */ LDR R0, [R5] \n\
/* 080428e0 */ LDR R1, =0x26e \n\
/* 080428e2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080428e4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080428e6 */ STRB R1, [R0] \n\
/* 080428e8 */ LDR R0, [R5] \n\
/* 080428ea */ LDR R2, =0x26f \n\
/* 080428ec */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080428ee */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080428f0 */ STRB R1, [R0] \n\
/* 080428f2 */ LDR R0, [R7] \n\
/* 080428f4 */ LDR R1, [R5] \n\
/* 080428f6 */ SUBS R2, 0x51 @ Subtract 0x51 from R2 \n\
/* 080428f8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080428fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080428fc */ LDRSH R1, [R1, R2] \n\
/* 080428fe */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08042900 */ BL func_0804ddb0 \n\
/* 08042904 */ LDR R1, [R5] \n\
/* 08042906 */ MOVS R2, 0x9C @ Set R2 to 0x9C \n\
/* 08042908 */ LSLS R2, R2, 0x2 \n\
/* 0804290a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804290c */ STRB R0, [R1] \n\
 \n\
branch_0804290e: \n\
/* 0804290e */ ADD SP, 0x14 \n\
/* 08042910 */ POP {R4-R7} \n\
/* 08042912 */ POP {R0} \n\
/* 08042914 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
