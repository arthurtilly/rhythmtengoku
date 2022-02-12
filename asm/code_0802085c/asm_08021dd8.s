asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021dd8 \n\
/* 08021dd8 */ PUSH {R4-R6, LR} \n\
/* 08021dda */ SUB SP, 0x14 \n\
/* 08021ddc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08021dde */ LDRB R1, [R4] \n\
/* 08021de0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08021de2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08021de4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021de6 */ STRB R0, [R4] \n\
/* 08021de8 */ LDR R6, =D_03005380 \n\
/* 08021dea */ LDR R0, [R6] \n\
/* 08021dec */ LDR R1, =D_088acc2c \n\
/* 08021dee */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 08021df0 */ STR R2, [SP] \n\
/* 08021df2 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08021df4 */ LSLS R2, R2, 0x7 \n\
/* 08021df6 */ STR R2, [SP, 0x4] \n\
/* 08021df8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021dfa */ STR R2, [SP, 0x8] \n\
/* 08021dfc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08021dfe */ STR R5, [SP, 0xC] \n\
/* 08021e00 */ STR R5, [SP, 0x10] \n\
/* 08021e02 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021e04 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08021e06 */ BL func_0804d160 \n\
/* 08021e0a */ STRH R0, [R4, 0x4] \n\
/* 08021e0c */ LDR R0, =D_030055d0 \n\
/* 08021e0e */ LDR R0, [R0] \n\
/* 08021e10 */ LDRB R0, [R0] \n\
/* 08021e12 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021e14 */ BNE branch_08021e22 \n\
/* 08021e16 */ LDR R0, [R6] \n\
/* 08021e18 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021e1a */ LDRSH R1, [R4, R2] \n\
/* 08021e1c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021e1e */ BL func_0804d8c4 \n\
 \n\
branch_08021e22: \n\
/* 08021e22 */ STRH R5, [R4, 0x6] \n\
/* 08021e24 */ STRH R5, [R4, 0x8] \n\
/* 08021e26 */ STRH R5, [R4, 0xA] \n\
/* 08021e28 */ STRH R5, [R4, 0xC] \n\
/* 08021e2a */ ADD SP, 0x14 \n\
/* 08021e2c */ POP {R4-R6} \n\
/* 08021e2e */ POP {R0} \n\
/* 08021e30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
