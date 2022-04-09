asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018d9c \n\
/* 08018d9c */ PUSH {R4-R7, LR} \n\
/* 08018d9e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08018da0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08018da2 */ PUSH {R6, R7} \n\
/* 08018da4 */ SUB SP, 0x14 \n\
/* 08018da6 */ LDR R0, =D_030046a4 \n\
/* 08018da8 */ LDR R1, [R0] \n\
/* 08018daa */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08018dac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018dae */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08018db0 */ LDRB R2, [R1, 0x12] \n\
/* 08018db2 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08018db4 */ LDRB R2, [R1, 0x13] \n\
/* 08018db6 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08018db8 */ ADDS R6, R3, R2 @ Set R6 to R3 + R2 \n\
/* 08018dba */ LDRB R0, [R1, 0xC] \n\
/* 08018dbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018dbe */ BNE branch_08018e42 \n\
/* 08018dc0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08018dc2 */ BEQ branch_08018e42 \n\
/* 08018dc4 */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 08018dc6 */ LSLS R2, R2, 0x1 \n\
/* 08018dc8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08018dca */ LDRB R0, [R0] \n\
/* 08018dcc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018dce */ BNE branch_08018e42 \n\
/* 08018dd0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08018dd2 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08018dd4 */ BCS branch_08018e00 \n\
/* 08018dd6 */ LDR R7, =D_03005380 \n\
/* 08018dd8 */ MOV R4, R9 @ Set R4 to R9 \n\
 \n\
branch_08018dda: \n\
/* 08018dda */ LDR R0, [R7] \n\
/* 08018ddc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018dde */ LDRSH R1, [R4, R3] \n\
/* 08018de0 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08018de2 */ BL func_0804ddb0 \n\
/* 08018de6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08018de8 */ LDR R0, [R7] \n\
/* 08018dea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018dec */ LDRSH R1, [R4, R3] \n\
/* 08018dee */ SUBS R2, 0xA @ Subtract 0xA from R2 \n\
/* 08018df0 */ LSLS R2, R2, 0x10 \n\
/* 08018df2 */ ASRS R2, R2, 0x10 \n\
/* 08018df4 */ BL func_0804d648 \n\
/* 08018df8 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08018dfa */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08018dfc */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08018dfe */ BCC branch_08018dda \n\
 \n\
branch_08018e00: \n\
/* 08018e00 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08018e02 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08018e04 */ BCS branch_08018e22 \n\
/* 08018e06 */ LDR R7, =D_03005380 \n\
/* 08018e08 */ LSLS R0, R5, 0x1 \n\
/* 08018e0a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08018e0c */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
 \n\
branch_08018e0e: \n\
/* 08018e0e */ LDR R0, [R7] \n\
/* 08018e10 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018e12 */ LDRSH R1, [R4, R2] \n\
/* 08018e14 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018e16 */ BL func_0804d770 \n\
/* 08018e1a */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08018e1c */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08018e1e */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08018e20 */ BCC branch_08018e0e \n\
 \n\
branch_08018e22: \n\
/* 08018e22 */ LDR R0, =s_f_result_mes_add_seqData \n\
/* 08018e24 */ BL func_08002634 \n\
/* 08018e28 */ LDR R0, =D_03005380 \n\
/* 08018e2a */ LDR R0, [R0] \n\
/* 08018e2c */ LDR R1, =D_0890b6dc \n\
/* 08018e2e */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 08018e30 */ STR R2, [SP] \n\
/* 08018e32 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018e34 */ STR R2, [SP, 0x4] \n\
/* 08018e36 */ STR R2, [SP, 0x8] \n\
/* 08018e38 */ STR R2, [SP, 0xC] \n\
/* 08018e3a */ STR R2, [SP, 0x10] \n\
/* 08018e3c */ MOVS R3, 0x58 @ Set R3 to 0x58 \n\
/* 08018e3e */ BL func_0804d160 \n\
 \n\
branch_08018e42: \n\
/* 08018e42 */ ADD SP, 0x14 \n\
/* 08018e44 */ POP {R3, R4} \n\
/* 08018e46 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08018e48 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08018e4a */ POP {R4-R7} \n\
/* 08018e4c */ POP {R0} \n\
/* 08018e4e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
