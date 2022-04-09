asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004dc0 \n\
/* 08004dc0 */ PUSH {R4-R6, LR} \n\
/* 08004dc2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004dc4 */ LDR R6, [R4, 0xC] \n\
/* 08004dc6 */ LSLS R1, R6, 0x3 \n\
/* 08004dc8 */ LDR R0, [R4, 0x8] \n\
/* 08004dca */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08004dcc */ LDR R1, [R5] \n\
/* 08004dce */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08004dd0 */ BEQ branch_08004e58 \n\
/* 08004dd2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08004dd4 */ BGE branch_08004ddc \n\
/* 08004dd6 */ LDR R0, =0x7fffffff \n\
/* 08004dd8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08004dda */ LDR R1, [R0] \n\
 \n\
branch_08004ddc: \n\
/* 08004ddc */ LDRB R2, [R5, 0x4] \n\
/* 08004dde */ LSLS R0, R2, 0x1C \n\
/* 08004de0 */ LSRS R0, R0, 0x1C \n\
/* 08004de2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08004de4 */ BEQ branch_08004e0e \n\
/* 08004de6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08004de8 */ BGT branch_08004df4 \n\
/* 08004dea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004dec */ BEQ branch_08004dfe \n\
/* 08004dee */ B branch_08004e4a \n\
\n\
.ltorg \n\
 \n\
branch_08004df4: \n\
/* 08004df4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08004df6 */ BEQ branch_08004e20 \n\
/* 08004df8 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08004dfa */ BEQ branch_08004e32 \n\
/* 08004dfc */ B branch_08004e4a \n\
 \n\
branch_08004dfe: \n\
/* 08004dfe */ LDR R0, [R4] \n\
/* 08004e00 */ LSRS R2, R2, 0x4 \n\
/* 08004e02 */ LDRB R3, [R5, 0x5] \n\
/* 08004e04 */ LSLS R3, R3, 0x1C \n\
/* 08004e06 */ LSRS R3, R3, 0x1C \n\
/* 08004e08 */ BL func_08004b70 \n\
/* 08004e0c */ B branch_08004e42 \n\
 \n\
branch_08004e0e: \n\
/* 08004e0e */ LDR R0, [R4] \n\
/* 08004e10 */ LSLS R2, R2, 0x18 \n\
/* 08004e12 */ LSRS R2, R2, 0x1C \n\
/* 08004e14 */ LDRB R3, [R5, 0x5] \n\
/* 08004e16 */ LSLS R3, R3, 0x1C \n\
/* 08004e18 */ LSRS R3, R3, 0x1C \n\
/* 08004e1a */ BL func_08004b98 \n\
/* 08004e1e */ B branch_08004e42 \n\
 \n\
branch_08004e20: \n\
/* 08004e20 */ LDR R0, [R4] \n\
/* 08004e22 */ LSLS R2, R2, 0x18 \n\
/* 08004e24 */ LSRS R2, R2, 0x1C \n\
/* 08004e26 */ LDRB R3, [R5, 0x5] \n\
/* 08004e28 */ LSLS R3, R3, 0x1C \n\
/* 08004e2a */ LSRS R3, R3, 0x1C \n\
/* 08004e2c */ BL func_08004c0c \n\
/* 08004e30 */ B branch_08004e42 \n\
 \n\
branch_08004e32: \n\
/* 08004e32 */ LDR R0, [R4] \n\
/* 08004e34 */ LSLS R2, R2, 0x18 \n\
/* 08004e36 */ LSRS R2, R2, 0x1C \n\
/* 08004e38 */ LDRB R3, [R5, 0x5] \n\
/* 08004e3a */ LSLS R3, R3, 0x1C \n\
/* 08004e3c */ LSRS R3, R3, 0x1C \n\
/* 08004e3e */ BL func_08004c50 \n\
 \n\
branch_08004e42: \n\
/* 08004e42 */ LDR R2, [R4, 0x4] \n\
/* 08004e44 */ LSLS R1, R6, 0x2 \n\
/* 08004e46 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08004e48 */ STR R0, [R1] \n\
 \n\
branch_08004e4a: \n\
/* 08004e4a */ LDR R0, [R5, 0x8] \n\
/* 08004e4c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004e4e */ BEQ branch_08004e58 \n\
/* 08004e50 */ ADDS R0, R6, 0x1 @ Set R0 to R6 + 0x1 \n\
/* 08004e52 */ STR R0, [R4, 0xC] \n\
/* 08004e54 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08004e56 */ B branch_08004e5a \n\
 \n\
branch_08004e58: \n\
/* 08004e58 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08004e5a: \n\
/* 08004e5a */ POP {R4-R6} \n\
/* 08004e5c */ POP {R1} \n\
/* 08004e5e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
