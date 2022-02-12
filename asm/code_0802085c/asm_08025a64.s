asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025a64 \n\
/* 08025a64 */ PUSH {R4-R7, LR} \n\
/* 08025a66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025a68 */ LDR R7, =D_030055d0 \n\
/* 08025a6a */ MOVS R6, 0x9F @ Set R6 to 0x9F \n\
/* 08025a6c */ LSLS R6, R6, 0x5 \n\
/* 08025a6e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08025a70 */ LDR R5, =0x000013ec \n\
 \n\
branch_08025a72: \n\
/* 08025a72 */ LDR R0, [R7] \n\
/* 08025a74 */ LSLS R2, R3, 0x1 \n\
/* 08025a76 */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
/* 08025a78 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025a7a */ STRH R4, [R1] \n\
/* 08025a7c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08025a7e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08025a80 */ STRH R4, [R0] \n\
/* 08025a82 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08025a84 */ CMP R3, 0x5 @ Compare R3 and 0x5 \n\
/* 08025a86 */ BLS branch_08025a72 \n\
/* 08025a88 */ POP {R4-R7} \n\
/* 08025a8a */ POP {R0} \n\
/* 08025a8c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
