asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011d8c \n\
/* 08011d8c */ PUSH {R4-R7, LR} \n\
/* 08011d8e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08011d90 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08011d92 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08011d94 */ PUSH {R5-R7} \n\
/* 08011d96 */ SUB SP, 0xC \n\
/* 08011d98 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08011d9a */ LDR R0, [R5, 0x18] \n\
/* 08011d9c */ STR R0, [SP, 0x8] \n\
/* 08011d9e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011da0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08011da2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08011da4 */ ADD R2, SP, 0x4 \n\
/* 08011da6 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08011da8 */ LDR R3, =D_03005380 \n\
/* 08011daa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08011dac */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_08011dae: \n\
/* 08011dae */ LDR R0, [SP, 0x8] \n\
/* 08011db0 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08011db2 */ MOV R2, SP @ Set R2 to SP \n\
/* 08011db4 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08011db6 */ BL func_08011a58 \n\
/* 08011dba */ LDR R0, [SP, 0x4] \n\
/* 08011dbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011dbe */ BEQ branch_08011df4 \n\
/* 08011dc0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08011dc2 */ LDR R0, [R1] \n\
/* 08011dc4 */ ADDS R4, R5, 0x4 @ Set R4 to R5 + 0x4 \n\
/* 08011dc6 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08011dc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011dca */ LDRSH R1, [R4, R2] \n\
/* 08011dcc */ LDR R2, [SP] \n\
/* 08011dce */ LSLS R2, R2, 0x12 \n\
/* 08011dd0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08011dd2 */ LSLS R3, R3, 0x10 \n\
/* 08011dd4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08011dd6 */ ASRS R2, R2, 0x10 \n\
/* 08011dd8 */ BL func_0804d614 \n\
/* 08011ddc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08011dde */ LDR R0, [R1] \n\
/* 08011de0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011de2 */ LDRSH R1, [R4, R2] \n\
/* 08011de4 */ LDR R2, [SP, 0x4] \n\
/* 08011de6 */ LSLS R2, R2, 0x18 \n\
/* 08011de8 */ ASRS R2, R2, 0x18 \n\
/* 08011dea */ BL func_0804cebc \n\
/* 08011dee */ B branch_08011e06 \n\
\n\
.ltorg \n\
 \n\
branch_08011df4: \n\
/* 08011df4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08011df6 */ LDR R0, [R3] \n\
/* 08011df8 */ ADDS R1, R5, 0x4 @ Set R1 to R5 + 0x4 \n\
/* 08011dfa */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08011dfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011dfe */ LDRSH R1, [R1, R2] \n\
/* 08011e00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011e02 */ BL func_0804cebc \n\
 \n\
branch_08011e06: \n\
/* 08011e06 */ LDR R1, [SP] \n\
/* 08011e08 */ LDR R0, [SP, 0x4] \n\
/* 08011e0a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08011e0c */ CMP R9, R1 @ Compare R9 and R1 \n\
/* 08011e0e */ BCS branch_08011e12 \n\
/* 08011e10 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08011e12: \n\
/* 08011e12 */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08011e14 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08011e16 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08011e18 */ BLS branch_08011dae \n\
/* 08011e1a */ MOVS R0, 0x38 @ Set R0 to 0x38 \n\
/* 08011e1c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08011e1e */ SUBS R6, R0, R3 @ Set R6 to R0 - R3 \n\
/* 08011e20 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08011e22 */ BEQ branch_08011e50 \n\
/* 08011e24 */ LDR R4, =D_03005380 \n\
/* 08011e26 */ LDR R0, [R4] \n\
/* 08011e28 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08011e2a */ LDRSH R1, [R5, R2] \n\
/* 08011e2c */ LSLS R2, R3, 0x12 \n\
/* 08011e2e */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08011e30 */ LSLS R3, R3, 0x10 \n\
/* 08011e32 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08011e34 */ ASRS R2, R2, 0x10 \n\
/* 08011e36 */ BL func_0804d614 \n\
/* 08011e3a */ LDR R0, [R4] \n\
/* 08011e3c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08011e3e */ LDRSH R1, [R5, R2] \n\
/* 08011e40 */ LSLS R2, R6, 0x18 \n\
/* 08011e42 */ ASRS R2, R2, 0x18 \n\
/* 08011e44 */ BL func_0804cebc \n\
/* 08011e48 */ B branch_08011e5e \n\
\n\
.ltorg \n\
 \n\
branch_08011e50: \n\
/* 08011e50 */ LDR R0, =D_03005380 \n\
/* 08011e52 */ LDR R0, [R0] \n\
/* 08011e54 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08011e56 */ LDRSH R1, [R5, R3] \n\
/* 08011e58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011e5a */ BL func_0804cebc \n\
 \n\
branch_08011e5e: \n\
/* 08011e5e */ ADD SP, 0xC \n\
/* 08011e60 */ POP {R3-R5} \n\
/* 08011e62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08011e64 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08011e66 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08011e68 */ POP {R4-R7} \n\
/* 08011e6a */ POP {R0} \n\
/* 08011e6c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
