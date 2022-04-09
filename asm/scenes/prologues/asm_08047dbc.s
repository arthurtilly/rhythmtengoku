asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047dbc \n\
/* 08047dbc */ PUSH {R4-R6, LR} \n\
/* 08047dbe */ SUB SP, 0x14 \n\
/* 08047dc0 */ LDR R6, =D_030055d0 \n\
/* 08047dc2 */ LDR R1, [R6] \n\
/* 08047dc4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047dc6 */ STRB R0, [R1] \n\
/* 08047dc8 */ BL func_08047d8c \n\
/* 08047dcc */ BL func_0800e0ec \n\
/* 08047dd0 */ STR R4, [SP] \n\
/* 08047dd2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047dd4 */ STR R0, [SP, 0x4] \n\
/* 08047dd6 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08047dd8 */ STR R5, [SP, 0x8] \n\
/* 08047dda */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047ddc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047dde */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047de0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047de2 */ BL func_0800e0a0 \n\
/* 08047de6 */ LDR R0, =D_03005380 \n\
/* 08047de8 */ LDR R0, [R0] \n\
/* 08047dea */ LDR R1, =D_088b8e50 \n\
/* 08047dec */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 08047dee */ STR R2, [SP] \n\
/* 08047df0 */ STR R4, [SP, 0x4] \n\
/* 08047df2 */ STR R5, [SP, 0x8] \n\
/* 08047df4 */ STR R4, [SP, 0xC] \n\
/* 08047df6 */ STR R4, [SP, 0x10] \n\
/* 08047df8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047dfa */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08047dfc */ BL func_0804d160 \n\
/* 08047e00 */ LDR R1, [R6] \n\
/* 08047e02 */ STRH R0, [R1, 0x2] \n\
/* 08047e04 */ ADD SP, 0x14 \n\
/* 08047e06 */ POP {R4-R6} \n\
/* 08047e08 */ POP {R0} \n\
/* 08047e0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
