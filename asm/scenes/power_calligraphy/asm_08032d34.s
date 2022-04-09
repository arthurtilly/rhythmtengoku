asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032d34 \n\
/* 08032d34 */ PUSH {R4-R7, LR} \n\
/* 08032d36 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08032d38 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08032d3a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08032d3c */ PUSH {R5-R7} \n\
/* 08032d3e */ SUB SP, 0xC \n\
/* 08032d40 */ LDR R5, =D_030055d0 \n\
/* 08032d42 */ LDR R2, [R5] \n\
/* 08032d44 */ MOVS R1, 0xD2 @ Set R1 to 0xD2 \n\
/* 08032d46 */ LSLS R1, R1, 0x1 \n\
/* 08032d48 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08032d4a */ LDRB R0, [R0] \n\
/* 08032d4c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032d4e */ BNE branch_08032d52 \n\
/* 08032d50 */ B branch_08032eb2 \n\
 \n\
branch_08032d52: \n\
/* 08032d52 */ MOVS R3, 0xD3 @ Set R3 to 0xD3 \n\
/* 08032d54 */ LSLS R3, R3, 0x1 \n\
/* 08032d56 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08032d58 */ LDRH R0, [R1] \n\
/* 08032d5a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08032d5c */ STRH R0, [R1] \n\
/* 08032d5e */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08032d60 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08032d62 */ LSLS R0, R0, 0x10 \n\
/* 08032d64 */ LSRS R0, R0, 0x10 \n\
/* 08032d66 */ LDRH R1, [R1] \n\
/* 08032d68 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08032d6a */ BLS branch_08032da4 \n\
/* 08032d6c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08032d6e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_08032d70: \n\
/* 08032d70 */ LDR R0, =D_03005380 \n\
/* 08032d72 */ LDR R0, [R0] \n\
/* 08032d74 */ LDR R5, =D_030055d0 \n\
/* 08032d76 */ LDR R1, [R5] \n\
/* 08032d78 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08032d7a */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 08032d7c */ LDRSH R1, [R1, R2] \n\
/* 08032d7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032d80 */ BL func_0804d770 \n\
/* 08032d84 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08032d86 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08032d88 */ CMP R7, 0x1D @ Compare R7 and 0x1D \n\
/* 08032d8a */ BLS branch_08032d70 \n\
/* 08032d8c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032d8e */ LDR R0, [R5] \n\
/* 08032d90 */ MOVS R3, 0xD2 @ Set R3 to 0xD2 \n\
/* 08032d92 */ LSLS R3, R3, 0x1 \n\
/* 08032d94 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032d96 */ STRB R1, [R0] \n\
/* 08032d98 */ B branch_08032eb2 \n\
\n\
.ltorg \n\
 \n\
branch_08032da4: \n\
/* 08032da4 */ LDR R4, =D_03005380 \n\
/* 08032da6 */ LDR R0, [R4] \n\
/* 08032da8 */ MOVS R3, 0x36 @ Set R3 to 0x36 \n\
/* 08032daa */ LDRSH R1, [R2, R3] \n\
/* 08032dac */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08032dae */ BL func_0804ddb0 \n\
/* 08032db2 */ STR R0, [SP, 0x4] \n\
/* 08032db4 */ LDR R0, [R4] \n\
/* 08032db6 */ LDR R1, [R5] \n\
/* 08032db8 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08032dba */ LDRSH R1, [R1, R2] \n\
/* 08032dbc */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08032dbe */ BL func_0804ddb0 \n\
/* 08032dc2 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08032dc4 */ LDR R0, [R4] \n\
/* 08032dc6 */ LDR R1, [R5] \n\
/* 08032dc8 */ MOVS R3, 0x36 @ Set R3 to 0x36 \n\
/* 08032dca */ LDRSH R1, [R1, R3] \n\
/* 08032dcc */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08032dce */ BL func_0804ddb0 \n\
/* 08032dd2 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08032dd4 */ MOVS R5, 0x10 @ Set R5 to 0x10 \n\
/* 08032dd6 */ ADD R10, R5 @ Add R5 to R10 \n\
/* 08032dd8 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08032dda */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 08032ddc */ STR R0, [SP, 0x8] \n\
 \n\
branch_08032dde: \n\
/* 08032dde */ LDR R0, =D_030055d0 \n\
/* 08032de0 */ LDR R1, [R0] \n\
/* 08032de2 */ LDR R2, [SP, 0x8] \n\
/* 08032de4 */ ADDS R5, R1, R2 @ Set R5 to R1 + R2 \n\
/* 08032de6 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08032de8 */ LDRSH R0, [R5, R3] \n\
/* 08032dea */ MOVS R3, 0xD3 @ Set R3 to 0xD3 \n\
/* 08032dec */ LSLS R3, R3, 0x1 \n\
/* 08032dee */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08032df0 */ LDRH R2, [R2] \n\
/* 08032df2 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08032df4 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08032df6 */ LDRH R3, [R1] \n\
/* 08032df8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08032dfa */ LSLS R1, R1, 0x3 \n\
/* 08032dfc */ BL func_08008f04 \n\
/* 08032e00 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08032e02 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08032e04 */ BGE branch_08032e20 \n\
/* 08032e06 */ LDR R0, =D_03005380 \n\
/* 08032e08 */ LDR R0, [R0] \n\
/* 08032e0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032e0c */ LDRSH R1, [R5, R2] \n\
/* 08032e0e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032e10 */ BL func_0804d770 \n\
/* 08032e14 */ B branch_08032ea6 \n\
\n\
.ltorg \n\
 \n\
branch_08032e20: \n\
/* 08032e20 */ LDR R3, =D_03005380 \n\
/* 08032e22 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032e24 */ LDR R0, [R3] \n\
/* 08032e26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032e28 */ LDRSH R1, [R5, R2] \n\
/* 08032e2a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08032e2c */ BL func_0804d770 \n\
/* 08032e30 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08032e32 */ LDRSH R1, [R5, R3] \n\
/* 08032e34 */ LDR R0, =0x7ff \n\
/* 08032e36 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08032e38 */ LSLS R0, R4, 0x1 \n\
/* 08032e3a */ LDR R2, =gSineTable \n\
/* 08032e3c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08032e3e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032e40 */ LDRSH R0, [R0, R3] \n\
/* 08032e42 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08032e44 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 08032e46 */ ASRS R2, R2, 0x8 \n\
/* 08032e48 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08032e4a */ LDRSH R0, [R5, R1] \n\
/* 08032e4c */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08032e4e */ LSLS R3, R3, 0x2 \n\
/* 08032e50 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032e52 */ LDR R1, =0x7ff \n\
/* 08032e54 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08032e56 */ LSLS R0, R0, 0x1 \n\
/* 08032e58 */ LDR R3, =gSineTable \n\
/* 08032e5a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032e5c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08032e5e */ LDRSH R0, [R0, R1] \n\
/* 08032e60 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08032e62 */ ASRS R6, R0, 0x8 \n\
/* 08032e64 */ LDRH R1, [R5, 0x2] \n\
/* 08032e66 */ LDR R0, =0x7ff \n\
/* 08032e68 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08032e6a */ LSLS R0, R0, 0x1 \n\
/* 08032e6c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08032e6e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032e70 */ LDRSH R0, [R0, R3] \n\
/* 08032e72 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08032e74 */ ASRS R3, R0, 0x9 \n\
/* 08032e76 */ LDRH R0, [R5, 0x4] \n\
/* 08032e78 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08032e7a */ STRH R1, [R5, 0x2] \n\
/* 08032e7c */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08032e7e */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08032e80 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08032e82 */ BGE branch_08032e86 \n\
/* 08032e84 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
 \n\
branch_08032e86: \n\
/* 08032e86 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08032e88 */ LDR R0, [R1] \n\
/* 08032e8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032e8c */ LDRSH R1, [R5, R2] \n\
/* 08032e8e */ LDR R5, [SP, 0x4] \n\
/* 08032e90 */ ADDS R2, R6, R5 @ Set R2 to R6 + R5 \n\
/* 08032e92 */ LSLS R2, R2, 0x10 \n\
/* 08032e94 */ ASRS R2, R2, 0x10 \n\
/* 08032e96 */ ADD R3, R10 @ Add R10 to R3 \n\
/* 08032e98 */ LSLS R3, R3, 0x10 \n\
/* 08032e9a */ ASRS R3, R3, 0x10 \n\
/* 08032e9c */ LSLS R4, R4, 0x10 \n\
/* 08032e9e */ LSRS R4, R4, 0x10 \n\
/* 08032ea0 */ STR R4, [SP] \n\
/* 08032ea2 */ BL func_0804d55c \n\
 \n\
branch_08032ea6: \n\
/* 08032ea6 */ LDR R0, [SP, 0x8] \n\
/* 08032ea8 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08032eaa */ STR R0, [SP, 0x8] \n\
/* 08032eac */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08032eae */ CMP R7, 0x1D @ Compare R7 and 0x1D \n\
/* 08032eb0 */ BLS branch_08032dde \n\
 \n\
branch_08032eb2: \n\
/* 08032eb2 */ ADD SP, 0xC \n\
/* 08032eb4 */ POP {R3-R5} \n\
/* 08032eb6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08032eb8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08032eba */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08032ebc */ POP {R4-R7} \n\
/* 08032ebe */ POP {R0} \n\
/* 08032ec0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
