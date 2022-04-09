asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045a50 \n\
/* 08045a50 */ PUSH {R4-R6, LR} \n\
/* 08045a52 */ SUB SP, 0x4 \n\
/* 08045a54 */ LDR R6, =D_03005380 \n\
/* 08045a56 */ LDR R0, [R6] \n\
/* 08045a58 */ LDR R5, =D_030055d0 \n\
/* 08045a5a */ LDR R1, [R5] \n\
/* 08045a5c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08045a5e */ LDRSH R1, [R1, R2] \n\
/* 08045a60 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045a62 */ STR R4, [SP] \n\
/* 08045a64 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08045a66 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045a68 */ BL func_0804dae0 \n\
/* 08045a6c */ LDR R0, [R6] \n\
/* 08045a6e */ LDR R1, [R5] \n\
/* 08045a70 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08045a72 */ LDRSH R1, [R1, R2] \n\
/* 08045a74 */ STR R4, [SP] \n\
/* 08045a76 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08045a78 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045a7a */ BL func_0804dae0 \n\
/* 08045a7e */ ADD SP, 0x4 \n\
/* 08045a80 */ POP {R4-R6} \n\
/* 08045a82 */ POP {R0} \n\
/* 08045a84 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
