asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020da0 \n\
/* 08020da0 */ PUSH {R4-R6, LR} \n\
/* 08020da2 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08020da4 */ PUSH {R6} \n\
/* 08020da6 */ SUB SP, 0x8 \n\
/* 08020da8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08020daa */ BL func_0800c3b8 \n\
/* 08020dae */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020db0 */ LSLS R4, R4, 0x10 \n\
/* 08020db2 */ LSRS R4, R4, 0x10 \n\
/* 08020db4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020db6 */ BL func_0800c3a4 \n\
/* 08020dba */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020dbc */ LSLS R1, R1, 0x18 \n\
/* 08020dbe */ LSRS R1, R1, 0x18 \n\
/* 08020dc0 */ LDR R6, =D_030055d0 \n\
/* 08020dc2 */ LDR R0, [R6] \n\
/* 08020dc4 */ LDR R3, [R0, 0x58] \n\
/* 08020dc6 */ ADDS R0, 0x60 @ Add 0x60 to R0 \n\
/* 08020dc8 */ STR R0, [SP] \n\
/* 08020dca */ LDR R5, =D_03004b64 \n\
/* 08020dcc */ STR R5, [SP, 0x4] \n\
/* 08020dce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020dd0 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08020dd2 */ BL func_08001fe0 \n\
/* 08020dd6 */ BL func_0800c3b8 \n\
/* 08020dda */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020ddc */ LSLS R4, R4, 0x10 \n\
/* 08020dde */ LSRS R4, R4, 0x10 \n\
/* 08020de0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020de2 */ BL func_0800c3a4 \n\
/* 08020de6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020de8 */ LSLS R1, R1, 0x18 \n\
/* 08020dea */ LSRS R1, R1, 0x18 \n\
/* 08020dec */ LDR R0, [R6] \n\
/* 08020dee */ LDR R3, [R0, 0x5C] \n\
/* 08020df0 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08020df2 */ LSLS R2, R2, 0x3 \n\
/* 08020df4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08020df6 */ STR R0, [SP] \n\
/* 08020df8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08020dfa */ LSLS R0, R0, 0x2 \n\
/* 08020dfc */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08020dfe */ STR R5, [SP, 0x4] \n\
/* 08020e00 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08020e02 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08020e04 */ BL func_08001fe0 \n\
/* 08020e08 */ ADD SP, 0x8 \n\
/* 08020e0a */ POP {R3} \n\
/* 08020e0c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020e0e */ POP {R4-R6} \n\
/* 08020e10 */ POP {R0} \n\
/* 08020e12 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
