asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012cb4 \n\
/* 08012cb4 */ PUSH {R4-R7, LR} \n\
/* 08012cb6 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08012cb8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08012cba */ PUSH {R6, R7} \n\
/* 08012cbc */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08012cbe */ LDR R0, =D_030046a4 \n\
/* 08012cc0 */ LDR R0, [R0] \n\
/* 08012cc2 */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 08012cc4 */ LSLS R1, R1, 0x2 \n\
/* 08012cc6 */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 08012cc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012cca */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08012ccc */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08012cce */ LDR R2, =D_089cdf24 \n\
/* 08012cd0 */ LSLS R0, R7, 0x3 \n\
/* 08012cd2 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08012cd4 */ LDRB R3, [R1, 0x2] \n\
/* 08012cd6 */ ADDS R1, R2, 0x4 @ Set R1 to R2 + 0x4 \n\
/* 08012cd8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012cda */ LDR R0, [R0] \n\
/* 08012cdc */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08012cde */ BNE branch_08012cf2 \n\
/* 08012ce0 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08012ce2 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08012ce4 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 08012ce6 */ BHI branch_08012cf2 \n\
/* 08012ce8 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08012cea */ BCC branch_08012cf2 \n\
/* 08012cec */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012cee */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08012cf0 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08012cf2: \n\
/* 08012cf2 */ LSLS R0, R7, 0x3 \n\
/* 08012cf4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08012cf6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012cf8 */ LDRSB R1, [R0, R1] \n\
/* 08012cfa */ STRH R1, [R6, 0x2] \n\
/* 08012cfc */ LDRB R0, [R0, 0x1] \n\
/* 08012cfe */ LSLS R0, R0, 0x18 \n\
/* 08012d00 */ ASRS R0, R0, 0x18 \n\
/* 08012d02 */ STRH R0, [R6, 0x4] \n\
/* 08012d04 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08012d06 */ LDRSH R0, [R6, R1] \n\
/* 08012d08 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08012d0a */ LDRSH R1, [R6, R2] \n\
/* 08012d0c */ BL func_0801316c \n\
/* 08012d10 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08012d12 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 08012d14 */ ADDS R5, 0x12 @ Add 0x12 to R5 \n\
/* 08012d16 */ LDR R1, =D_08050bdc \n\
/* 08012d18 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d1a */ MOVS R2, 0xB @ Set R2 to 0xB \n\
/* 08012d1c */ BL memcpy \n\
/* 08012d20 */ LDR R1, [R4, 0x4] \n\
/* 08012d22 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d24 */ BL func_080081a8 \n\
/* 08012d28 */ LDR R1, =D_08050be8 \n\
/* 08012d2a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d2c */ BL func_080081a8 \n\
/* 08012d30 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08012d32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012d34 */ BNE branch_08012d3e \n\
/* 08012d36 */ LDR R1, =D_08050c08 \n\
/* 08012d38 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d3a */ BL func_080081a8 \n\
 \n\
branch_08012d3e: \n\
/* 08012d3e */ LDR R1, =D_08050c14 \n\
/* 08012d40 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d42 */ BL func_080081a8 \n\
/* 08012d46 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08012d48 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012d4a */ BL func_08012c24 \n\
/* 08012d4e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08012d50 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d52 */ BL func_080081a8 \n\
/* 08012d56 */ LDR R1, =D_08050c18 \n\
/* 08012d58 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d5a */ BL func_080081a8 \n\
/* 08012d5e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08012d60 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08012d62 */ BEQ branch_08012d6c \n\
/* 08012d64 */ LDR R1, =D_08050c1c \n\
/* 08012d66 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d68 */ BL func_080081a8 \n\
 \n\
branch_08012d6c: \n\
/* 08012d6c */ LDR R1, =D_08050c24 \n\
/* 08012d6e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08012d70 */ BL func_080081a8 \n\
/* 08012d74 */ LDR R0, [R6, 0xC] \n\
/* 08012d76 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08012d78 */ BL func_0800aa4c \n\
/* 08012d7c */ LDR R0, =D_03005380 \n\
/* 08012d7e */ LDR R0, [R0] \n\
/* 08012d80 */ LDR R4, =D_030046a4 \n\
/* 08012d82 */ LDR R1, [R4] \n\
/* 08012d84 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08012d86 */ LDRSH R1, [R1, R2] \n\
/* 08012d88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012d8a */ BL func_0804d770 \n\
/* 08012d8e */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08012d90 */ STRH R0, [R6, 0x8] \n\
/* 08012d92 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 08012d94 */ STRH R0, [R6, 0xA] \n\
/* 08012d96 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08012d98 */ BL func_0800c3a4 \n\
/* 08012d9c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08012d9e */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 08012da0 */ BL func_0800c138 \n\
/* 08012da4 */ LDR R1, [R4] \n\
/* 08012da6 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08012da8 */ STRB R0, [R1] \n\
/* 08012daa */ POP {R3, R4} \n\
/* 08012dac */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012dae */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08012db0 */ POP {R4-R7} \n\
/* 08012db2 */ POP {R0} \n\
/* 08012db4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
