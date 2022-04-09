asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046a88 \n\
/* 08046a88 */ PUSH {R4, R5, LR} \n\
/* 08046a8a */ SUB SP, 0x14 \n\
/* 08046a8c */ LDR R5, =D_030055d0 \n\
/* 08046a8e */ LDR R1, [R5] \n\
/* 08046a90 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046a92 */ STRB R0, [R1] \n\
/* 08046a94 */ BL func_08046a58 \n\
/* 08046a98 */ BL func_0800e0ec \n\
/* 08046a9c */ STR R4, [SP] \n\
/* 08046a9e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046aa0 */ STR R0, [SP, 0x4] \n\
/* 08046aa2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046aa4 */ STR R0, [SP, 0x8] \n\
/* 08046aa6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046aa8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046aaa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046aac */ BL func_0800e0a0 \n\
/* 08046ab0 */ LDR R0, =D_03005380 \n\
/* 08046ab2 */ LDR R0, [R0] \n\
/* 08046ab4 */ LDR R1, =D_088b27f4 \n\
/* 08046ab6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046ab8 */ STR R2, [SP] \n\
/* 08046aba */ STR R4, [SP, 0x4] \n\
/* 08046abc */ STR R4, [SP, 0x8] \n\
/* 08046abe */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08046ac0 */ STR R2, [SP, 0xC] \n\
/* 08046ac2 */ STR R4, [SP, 0x10] \n\
/* 08046ac4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046ac6 */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 08046ac8 */ BL func_0804d160 \n\
/* 08046acc */ LDR R1, [R5] \n\
/* 08046ace */ STRH R0, [R1, 0x2] \n\
/* 08046ad0 */ ADD SP, 0x14 \n\
/* 08046ad2 */ POP {R4, R5} \n\
/* 08046ad4 */ POP {R0} \n\
/* 08046ad6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
