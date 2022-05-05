asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049db8 \n\
/* 08049db8 */ PUSH {R4-R6, LR} \n\
/* 08049dba */ LSLS R1, R1, 0x5 \n\
/* 08049dbc */ LDR R0, [R0, 0x18] \n\
/* 08049dbe */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08049dc0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049dc2 */ LDR R0, =D_03005b8c \n\
/* 08049dc4 */ LDRH R0, [R0] \n\
/* 08049dc6 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049dc8 */ BCS branch_08049dfc \n\
/* 08049dca */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08049dcc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08049dce */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_08049dd0: \n\
/* 08049dd0 */ LDR R0, =D_030064bc \n\
/* 08049dd2 */ LDR R1, [R0] \n\
/* 08049dd4 */ LSLS R0, R4, 0x5 \n\
/* 08049dd6 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08049dd8 */ LDRB R2, [R1] \n\
/* 08049dda */ LSLS R0, R2, 0x1F \n\
/* 08049ddc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049dde */ BEQ branch_08049df2 \n\
/* 08049de0 */ LDR R0, [R1, 0xC] \n\
/* 08049de2 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08049de4 */ BNE branch_08049df2 \n\
/* 08049de6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08049de8 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08049dea */ STRB R0, [R1] \n\
/* 08049dec */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08049dee */ BL func_080493b0 \n\
 \n\
branch_08049df2: \n\
/* 08049df2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049df4 */ LDR R0, =D_03005b8c \n\
/* 08049df6 */ LDRH R0, [R0] \n\
/* 08049df8 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049dfa */ BCC branch_08049dd0 \n\
 \n\
branch_08049dfc: \n\
/* 08049dfc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049dfe */ LDR R0, =D_030056a0 \n\
/* 08049e00 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08049e02 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08049e04 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08049e06 */ MOVS R6, 0x3 @ Set R6 to 0x3 \n\
/* 08049e08 */ MOVS R3, 0xFF @ Set R3 to 0xFF \n\
 \n\
branch_08049e0a: \n\
/* 08049e0a */ LDRB R0, [R1] \n\
/* 08049e0c */ LSLS R0, R0, 0x1F \n\
/* 08049e0e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049e10 */ BEQ branch_08049e20 \n\
/* 08049e12 */ LDR R0, [R2] \n\
/* 08049e14 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08049e16 */ BNE branch_08049e20 \n\
/* 08049e18 */ STRB R6, [R1, 0x1C] \n\
/* 08049e1a */ LDR R0, [R1, 0x1C] \n\
/* 08049e1c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08049e1e */ STR R0, [R1, 0x1C] \n\
 \n\
branch_08049e20: \n\
/* 08049e20 */ ADDS R2, 0x20 @ Add 0x20 to R2 \n\
/* 08049e22 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08049e24 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049e26 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 08049e28 */ BLS branch_08049e0a \n\
/* 08049e2a */ POP {R4-R6} \n\
/* 08049e2c */ POP {R0} \n\
/* 08049e2e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
