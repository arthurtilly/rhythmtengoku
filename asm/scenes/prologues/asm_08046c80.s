asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046c80 \n\
/* 08046c80 */ PUSH {R4, R5, LR} \n\
/* 08046c82 */ SUB SP, 0x14 \n\
/* 08046c84 */ LDR R5, =D_030055d0 \n\
/* 08046c86 */ LDR R1, [R5] \n\
/* 08046c88 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046c8a */ STRB R0, [R1] \n\
/* 08046c8c */ BL func_08046c50 \n\
/* 08046c90 */ BL func_0800e0ec \n\
/* 08046c94 */ STR R4, [SP] \n\
/* 08046c96 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046c98 */ STR R0, [SP, 0x4] \n\
/* 08046c9a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046c9c */ STR R0, [SP, 0x8] \n\
/* 08046c9e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046ca0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046ca2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08046ca4 */ BL func_0800e0a0 \n\
/* 08046ca8 */ LDR R0, =D_03005380 \n\
/* 08046caa */ LDR R0, [R0] \n\
/* 08046cac */ LDR R1, =D_088b2f44 \n\
/* 08046cae */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046cb0 */ STR R2, [SP] \n\
/* 08046cb2 */ STR R4, [SP, 0x4] \n\
/* 08046cb4 */ STR R4, [SP, 0x8] \n\
/* 08046cb6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08046cb8 */ STR R2, [SP, 0xC] \n\
/* 08046cba */ STR R4, [SP, 0x10] \n\
/* 08046cbc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046cbe */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 08046cc0 */ BL func_0804d160 \n\
/* 08046cc4 */ LDR R1, [R5] \n\
/* 08046cc6 */ STRH R0, [R1, 0x2] \n\
/* 08046cc8 */ ADD SP, 0x14 \n\
/* 08046cca */ POP {R4, R5} \n\
/* 08046ccc */ POP {R0} \n\
/* 08046cce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
