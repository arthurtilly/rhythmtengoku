asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014df0 \n\
/* 08014df0 */ PUSH {R4-R6, LR} \n\
/* 08014df2 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08014df4 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08014df6 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08014df8 */ PUSH {R4-R6} \n\
/* 08014dfa */ SUB SP, 0x14 \n\
/* 08014dfc */ LDR R0, =(D_03004b10 + 0x10) \n\
/* 08014dfe */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08014e00 */ LDR R4, =D_030046a4 \n\
/* 08014e02 */ LDR R1, [R4] \n\
/* 08014e04 */ LDR R0, =0xffff \n\
/* 08014e06 */ STRH R0, [R1, 0x34] \n\
/* 08014e08 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014e0a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08014e0c */ STRH R0, [R1, 0x3C] \n\
/* 08014e0e */ BL func_0800c3b8 \n\
/* 08014e12 */ LSLS R0, R0, 0x10 \n\
/* 08014e14 */ LSRS R0, R0, 0x10 \n\
/* 08014e16 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08014e18 */ MOVS R2, 0x68 @ Set R2 to 0x68 \n\
/* 08014e1a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08014e1c */ BL func_0800a204 \n\
/* 08014e20 */ LDR R1, [R4] \n\
/* 08014e22 */ STR R0, [R1, 0x38] \n\
/* 08014e24 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08014e26 */ MOVS R2, 0x37 @ Set R2 to 0x37 \n\
/* 08014e28 */ BL func_0800ac68 \n\
/* 08014e2c */ LDR R0, [R4] \n\
/* 08014e2e */ LDR R0, [R0, 0x38] \n\
/* 08014e30 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08014e32 */ LSLS R1, R1, 0x4 \n\
/* 08014e34 */ BL func_0800aca0 \n\
/* 08014e38 */ LDR R0, [R4] \n\
/* 08014e3a */ LDR R0, [R0, 0x38] \n\
/* 08014e3c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014e3e */ BL func_0800acbc \n\
/* 08014e42 */ LDR R0, [R4] \n\
/* 08014e44 */ LDR R0, [R0, 0x38] \n\
/* 08014e46 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08014e48 */ BL func_0800acb0 \n\
/* 08014e4c */ LDR R0, [R4] \n\
/* 08014e4e */ LDR R0, [R0, 0x38] \n\
/* 08014e50 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 08014e52 */ BL func_0800ae00 \n\
/* 08014e56 */ LDR R0, [R4] \n\
/* 08014e58 */ LDR R0, [R0, 0x38] \n\
/* 08014e5a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08014e5c */ BL func_0800acd8 \n\
/* 08014e60 */ LDR R0, [R4] \n\
/* 08014e62 */ LDR R0, [R0, 0x38] \n\
/* 08014e64 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08014e66 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08014e68 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08014e6a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08014e6c */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08014e6e */ BL func_0800ad98 \n\
/* 08014e72 */ LDR R0, [R4] \n\
/* 08014e74 */ LDR R0, [R0, 0x38] \n\
/* 08014e76 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08014e78 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08014e7a */ BL func_0800ae0c \n\
/* 08014e7e */ LDR R6, =D_03005380 \n\
/* 08014e80 */ LDR R0, [R6] \n\
/* 08014e82 */ LDR R1, =D_08902eb0 \n\
/* 08014e84 */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 08014e86 */ STR R2, [SP] \n\
/* 08014e88 */ LDR R2, =0x80a \n\
/* 08014e8a */ STR R2, [SP, 0x4] \n\
/* 08014e8c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08014e8e */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08014e90 */ STR R2, [SP, 0x8] \n\
/* 08014e92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014e94 */ STR R2, [SP, 0xC] \n\
/* 08014e96 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08014e98 */ LSLS R2, R2, 0x8 \n\
/* 08014e9a */ STR R2, [SP, 0x10] \n\
/* 08014e9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014e9e */ MOVS R3, 0x8A @ Set R3 to 0x8A \n\
/* 08014ea0 */ BL func_0804d160 \n\
/* 08014ea4 */ LDR R1, [R4] \n\
/* 08014ea6 */ LDR R2, =0x4fa \n\
/* 08014ea8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014eaa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08014eac */ STRH R0, [R1] \n\
/* 08014eae */ LDR R0, [R6] \n\
/* 08014eb0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014eb2 */ LDRSH R1, [R1, R2] \n\
/* 08014eb4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08014eb6 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08014eb8 */ BL func_0804db44 \n\
/* 08014ebc */ LDR R0, [R4] \n\
/* 08014ebe */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08014ec0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014ec2 */ STRB R1, [R0] \n\
/* 08014ec4 */ LDR R0, [R4] \n\
/* 08014ec6 */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 08014ec8 */ STRB R5, [R0] \n\
/* 08014eca */ ADD SP, 0x14 \n\
/* 08014ecc */ POP {R3-R5} \n\
/* 08014ece */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08014ed0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08014ed2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08014ed4 */ POP {R4-R6} \n\
/* 08014ed6 */ POP {R0} \n\
/* 08014ed8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
