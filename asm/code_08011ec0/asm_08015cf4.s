asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015cf4 \n\
/* 08015cf4 */ PUSH {R4-R7, LR} \n\
/* 08015cf6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08015cf8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08015cfa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08015cfc */ PUSH {R5-R7} \n\
/* 08015cfe */ SUB SP, 0x20 \n\
/* 08015d00 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08015d02 */ LSLS R0, R0, 0x2 \n\
/* 08015d04 */ STR R0, [SP, 0x18] \n\
/* 08015d06 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08015d08 */ LSLS R1, R1, 0x1 \n\
/* 08015d0a */ STR R1, [SP, 0x1C] \n\
/* 08015d0c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08015d0e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015d10 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08015d12 */ LDR R0, =D_03005380 \n\
/* 08015d14 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08015d16 */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 08015d18 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_08015d1a: \n\
/* 08015d1a */ LDR R2, =D_030046a4 \n\
/* 08015d1c */ LDR R0, [R2] \n\
/* 08015d1e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08015d20 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08015d22 */ LDR R2, [SP, 0x18] \n\
/* 08015d24 */ LSLS R0, R2, 0x10 \n\
/* 08015d26 */ LSRS R0, R0, 0x10 \n\
/* 08015d28 */ BL func_08001980 \n\
/* 08015d2c */ STRH R0, [R4] \n\
/* 08015d2e */ LDR R1, [SP, 0x1C] \n\
/* 08015d30 */ LSLS R0, R1, 0x10 \n\
/* 08015d32 */ LSRS R0, R0, 0x10 \n\
/* 08015d34 */ BL func_08001980 \n\
/* 08015d38 */ STRH R0, [R4, 0x2] \n\
/* 08015d3a */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08015d3c */ BL func_08001980 \n\
/* 08015d40 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08015d42 */ LSLS R2, R2, 0x18 \n\
/* 08015d44 */ ASRS R2, R2, 0x18 \n\
/* 08015d46 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015d48 */ LDR R0, [R1] \n\
/* 08015d4a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015d4c */ STR R1, [SP] \n\
/* 08015d4e */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 08015d50 */ LSLS R1, R1, 0x8 \n\
/* 08015d52 */ STR R1, [SP, 0x4] \n\
/* 08015d54 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08015d56 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08015d58 */ STR R1, [SP, 0x8] \n\
/* 08015d5a */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08015d5c */ STR R1, [SP, 0xC] \n\
/* 08015d5e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015d60 */ STR R1, [SP, 0x10] \n\
/* 08015d62 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08015d64 */ STR R1, [SP, 0x14] \n\
/* 08015d66 */ LDR R1, =D_08902960 \n\
/* 08015d68 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08015d6a */ BL func_0804d294 \n\
/* 08015d6e */ LDR R2, =D_030046a4 \n\
/* 08015d70 */ LDR R1, [R2] \n\
/* 08015d72 */ LSLS R2, R7, 0x1 \n\
/* 08015d74 */ ADDS R1, 0x6A @ Add 0x6A to R1 \n\
/* 08015d76 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015d78 */ STRH R0, [R1] \n\
/* 08015d7a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015d7c */ LDR R5, [R0] \n\
/* 08015d7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015d80 */ LDRSH R6, [R1, R2] \n\
/* 08015d82 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08015d84 */ LSLS R4, R4, 0x1 \n\
/* 08015d86 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015d88 */ BL func_08001980 \n\
/* 08015d8c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08015d8e */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08015d90 */ LSLS R2, R2, 0x10 \n\
/* 08015d92 */ LSRS R2, R2, 0x10 \n\
/* 08015d94 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08015d96 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08015d98 */ BL func_0804dcb8 \n\
/* 08015d9c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08015d9e */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08015da0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08015da2 */ CMP R7, 0xF @ Compare R7 and 0xF \n\
/* 08015da4 */ BLS branch_08015d1a \n\
/* 08015da6 */ LDR R1, [SP, 0x18] \n\
/* 08015da8 */ LSLS R1, R1, 0x1 \n\
/* 08015daa */ STR R1, [SP, 0x18] \n\
/* 08015dac */ LDR R2, [SP, 0x1C] \n\
/* 08015dae */ LSLS R2, R2, 0x1 \n\
/* 08015db0 */ STR R2, [SP, 0x1C] \n\
/* 08015db2 */ MOVS R7, 0x10 @ Set R7 to 0x10 \n\
/* 08015db4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08015db6 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08015db8 */ LDR R1, =D_03005380 \n\
/* 08015dba */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08015dbc */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08015dbe */ LSLS R2, R2, 0x1 \n\
/* 08015dc0 */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08015dc2: \n\
/* 08015dc2 */ LDR R1, =D_030046a4 \n\
/* 08015dc4 */ LDR R0, [R1] \n\
/* 08015dc6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08015dc8 */ ADDS R4, R0, R2 @ Set R4 to R0 + R2 \n\
/* 08015dca */ LDR R1, [SP, 0x18] \n\
/* 08015dcc */ LSLS R0, R1, 0x10 \n\
/* 08015dce */ LSRS R0, R0, 0x10 \n\
/* 08015dd0 */ BL func_08001980 \n\
/* 08015dd4 */ STRH R0, [R4] \n\
/* 08015dd6 */ LDR R2, [SP, 0x1C] \n\
/* 08015dd8 */ LSLS R0, R2, 0x10 \n\
/* 08015dda */ LSRS R0, R0, 0x10 \n\
/* 08015ddc */ BL func_08001980 \n\
/* 08015de0 */ STRH R0, [R4, 0x2] \n\
/* 08015de2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08015de4 */ BL func_08001980 \n\
/* 08015de8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08015dea */ LSLS R2, R2, 0x18 \n\
/* 08015dec */ ASRS R2, R2, 0x18 \n\
/* 08015dee */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015df0 */ LDR R0, [R1] \n\
/* 08015df2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015df4 */ STR R1, [SP] \n\
/* 08015df6 */ MOVS R1, 0xC8 @ Set R1 to 0xC8 \n\
/* 08015df8 */ LSLS R1, R1, 0x8 \n\
/* 08015dfa */ STR R1, [SP, 0x4] \n\
/* 08015dfc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08015dfe */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08015e00 */ STR R1, [SP, 0x8] \n\
/* 08015e02 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08015e04 */ STR R1, [SP, 0xC] \n\
/* 08015e06 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015e08 */ STR R1, [SP, 0x10] \n\
/* 08015e0a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08015e0c */ STR R1, [SP, 0x14] \n\
/* 08015e0e */ LDR R1, =D_08902998 \n\
/* 08015e10 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08015e12 */ BL func_0804d294 \n\
/* 08015e16 */ LDR R2, =D_030046a4 \n\
/* 08015e18 */ LDR R1, [R2] \n\
/* 08015e1a */ LSLS R2, R7, 0x1 \n\
/* 08015e1c */ ADDS R1, 0x6A @ Add 0x6A to R1 \n\
/* 08015e1e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015e20 */ STRH R0, [R1] \n\
/* 08015e22 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015e24 */ LDR R5, [R0] \n\
/* 08015e26 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015e28 */ LDRSH R6, [R1, R2] \n\
/* 08015e2a */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08015e2c */ LSLS R4, R4, 0x1 \n\
/* 08015e2e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015e30 */ BL func_08001980 \n\
/* 08015e34 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08015e36 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08015e38 */ LSLS R2, R2, 0x10 \n\
/* 08015e3a */ LSRS R2, R2, 0x10 \n\
/* 08015e3c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08015e3e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08015e40 */ BL func_0804dcb8 \n\
/* 08015e44 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08015e46 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08015e48 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08015e4a */ CMP R7, 0x31 @ Compare R7 and 0x31 \n\
/* 08015e4c */ BLS branch_08015dc2 \n\
/* 08015e4e */ LDR R1, =D_03004b10 \n\
/* 08015e50 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08015e52 */ ADDS R2, 0x4C @ Add 0x4C to R2 \n\
/* 08015e54 */ MOVS R0, 0xBC @ Set R0 to 0xBC \n\
/* 08015e56 */ LSLS R0, R0, 0x6 \n\
/* 08015e58 */ STRH R0, [R2] \n\
/* 08015e5a */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 08015e5c */ LDR R0, =0x1010 \n\
/* 08015e5e */ STRH R0, [R1] \n\
/* 08015e60 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08015e62 */ LDR R4, =D_030046a4 \n\
/* 08015e64 */ MOVS R3, 0xCC @ Set R3 to 0xCC \n\
/* 08015e66 */ LSLS R3, R3, 0x1 \n\
/* 08015e68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08015e6a: \n\
/* 08015e6a */ LDR R0, [R4] \n\
/* 08015e6c */ LSLS R1, R7, 0x5 \n\
/* 08015e6e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08015e70 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08015e72 */ STRB R2, [R0] \n\
/* 08015e74 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08015e76 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08015e78 */ BLS branch_08015e6a \n\
/* 08015e7a */ ADD SP, 0x20 \n\
/* 08015e7c */ POP {R3-R5} \n\
/* 08015e7e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08015e80 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08015e82 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08015e84 */ POP {R4-R7} \n\
/* 08015e86 */ POP {R0} \n\
/* 08015e88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
