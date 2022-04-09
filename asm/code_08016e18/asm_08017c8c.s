asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017c8c \n\
/* 08017c8c */ PUSH {R4-R7, LR} \n\
/* 08017c8e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08017c90 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08017c92 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08017c94 */ PUSH {R5-R7} \n\
/* 08017c96 */ SUB SP, 0x18 \n\
/* 08017c98 */ STR R0, [SP] \n\
/* 08017c9a */ STR R3, [SP, 0x4] \n\
/* 08017c9c */ LSLS R1, R1, 0x10 \n\
/* 08017c9e */ LSLS R2, R2, 0x10 \n\
/* 08017ca0 */ LSRS R2, R2, 0x10 \n\
/* 08017ca2 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08017ca4 */ ADDS R7, 0x8 @ Add 0x8 to R7 \n\
/* 08017ca6 */ LDRH R3, [R7, 0x2] \n\
/* 08017ca8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08017caa */ LSLS R0, R0, 0x8 \n\
/* 08017cac */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08017cae */ LSRS R1, R1, 0x10 \n\
/* 08017cb0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017cb2 */ BEQ branch_08017cb6 \n\
/* 08017cb4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
 \n\
branch_08017cb6: \n\
/* 08017cb6 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08017cb8 */ LDR R0, =0xffff7fff \n\
/* 08017cba */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017cbc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017cbe */ BNE branch_08017cc2 \n\
/* 08017cc0 */ B branch_08017de4 \n\
 \n\
branch_08017cc2: \n\
/* 08017cc2 */ LDR R0, [SP] \n\
/* 08017cc4 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 08017cc6 */ LDRB R1, [R0] \n\
/* 08017cc8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08017cca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017ccc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017cce */ BEQ branch_08017cd2 \n\
/* 08017cd0 */ B branch_08017de4 \n\
 \n\
branch_08017cd2: \n\
/* 08017cd2 */ LDR R0, [SP] \n\
/* 08017cd4 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08017cd6 */ LDRH R0, [R0] \n\
/* 08017cd8 */ STR R0, [SP, 0x8] \n\
/* 08017cda */ LDR R0, [SP] \n\
/* 08017cdc */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08017cde */ LDRH R0, [R0] \n\
/* 08017ce0 */ STR R0, [SP, 0xC] \n\
/* 08017ce2 */ LDRB R1, [R7, 0xA] \n\
/* 08017ce4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017ce6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017ce8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017cea */ BEQ branch_08017d1c \n\
/* 08017cec */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08017cee */ LDRSB R0, [R7, R0] \n\
/* 08017cf0 */ BL func_0800c3a4 \n\
/* 08017cf4 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08017cf6 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08017cf8 */ LDRSB R0, [R7, R0] \n\
/* 08017cfa */ BL func_0800c3a4 \n\
/* 08017cfe */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08017d00 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08017d02 */ LDRSB R0, [R7, R0] \n\
/* 08017d04 */ BL func_0800c3a4 \n\
/* 08017d08 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017d0a */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08017d0c */ LDRSB R0, [R7, R0] \n\
/* 08017d0e */ BL func_0800c3a4 \n\
/* 08017d12 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08017d14 */ B branch_08017d2e \n\
\n\
.ltorg \n\
 \n\
branch_08017d1c: \n\
/* 08017d1c */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08017d1e */ LDRSB R0, [R7, R0] \n\
/* 08017d20 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08017d22 */ MOVS R6, 0x7 @ Set R6 to 0x7 \n\
/* 08017d24 */ LDRSB R6, [R7, R6] \n\
/* 08017d26 */ MOVS R4, 0x8 @ Set R4 to 0x8 \n\
/* 08017d28 */ LDRSB R4, [R7, R4] \n\
/* 08017d2a */ MOVS R5, 0x9 @ Set R5 to 0x9 \n\
/* 08017d2c */ LDRSB R5, [R7, R5] \n\
 \n\
branch_08017d2e: \n\
/* 08017d2e */ LDR R1, =D_030046a4 \n\
/* 08017d30 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08017d32 */ LDR R2, [R1] \n\
/* 08017d34 */ LDR R1, =0x4ab \n\
/* 08017d36 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08017d38 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017d3a */ LDRSB R1, [R0, R1] \n\
/* 08017d3c */ LDR R0, =0x4a9 \n\
/* 08017d3e */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08017d40 */ LDRB R2, [R2] \n\
/* 08017d42 */ LSLS R2, R2, 0x18 \n\
/* 08017d44 */ ASRS R2, R2, 0x18 \n\
/* 08017d46 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08017d48 */ BL func_080087d4 \n\
/* 08017d4c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08017d4e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08017d50 */ LDR R2, [R1] \n\
/* 08017d52 */ LDR R1, =0x4aa \n\
/* 08017d54 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08017d56 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017d58 */ LDRSB R1, [R0, R1] \n\
/* 08017d5a */ LDR R0, =0x4ac \n\
/* 08017d5c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08017d5e */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08017d60 */ LDRB R2, [R2] \n\
/* 08017d62 */ LSLS R2, R2, 0x18 \n\
/* 08017d64 */ ASRS R2, R2, 0x18 \n\
/* 08017d66 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08017d68 */ BL func_080087d4 \n\
/* 08017d6c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08017d6e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08017d70 */ LDR R0, [R1] \n\
/* 08017d72 */ LDR R2, =0x4ab \n\
/* 08017d74 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 08017d76 */ STR R2, [SP, 0x10] \n\
/* 08017d78 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017d7a */ LDRSB R1, [R2, R1] \n\
/* 08017d7c */ LDR R2, =0x4a9 \n\
/* 08017d7e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08017d80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017d82 */ LDRSB R2, [R0, R2] \n\
/* 08017d84 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017d86 */ BL func_080087d4 \n\
/* 08017d8a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08017d8c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08017d8e */ LDR R0, [R1] \n\
/* 08017d90 */ LDR R2, =0x4aa \n\
/* 08017d92 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 08017d94 */ STR R2, [SP, 0x14] \n\
/* 08017d96 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017d98 */ LDRSB R1, [R2, R1] \n\
/* 08017d9a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08017d9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017d9e */ LDRSB R2, [R0, R2] \n\
/* 08017da0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08017da2 */ BL func_080087d4 \n\
/* 08017da6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08017da8 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08017daa */ LDR R0, [R1] \n\
/* 08017dac */ LDR R2, =0x4a7 \n\
/* 08017dae */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08017db0 */ LDRB R0, [R0] \n\
/* 08017db2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017db4 */ BEQ branch_08017dbe \n\
/* 08017db6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08017db8 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08017dba */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08017dbc */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08017dbe: \n\
/* 08017dbe */ LDR R1, [SP, 0xC] \n\
/* 08017dc0 */ ADD R10, R1 @ Add R1 to R10 \n\
/* 08017dc2 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 08017dc4 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08017dc6 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 08017dc8 */ LDR R2, [SP, 0x8] \n\
/* 08017dca */ CMP R2, R4 @ Check R2 - R4 \n\
/* 08017dcc */ BLT branch_08017de4 \n\
/* 08017dce */ CMP R2, R5 @ Check R2 - R5 \n\
/* 08017dd0 */ BGT branch_08017de4 \n\
/* 08017dd2 */ LDR R2, [R7, 0x3C] \n\
/* 08017dd4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08017dd6 */ BEQ branch_08017e00 \n\
/* 08017dd8 */ LDR R0, [SP] \n\
/* 08017dda */ LDR R1, [R0, 0x64] \n\
/* 08017ddc */ BL _call_via_r2 \n\
/* 08017de0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017de2 */ BEQ branch_08017e00 \n\
 \n\
branch_08017de4: \n\
/* 08017de4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017de6 */ B branch_08017e1a \n\
\n\
.ltorg \n\
 \n\
branch_08017e00: \n\
/* 08017e00 */ LDR R1, [SP, 0x8] \n\
/* 08017e02 */ LDR R2, [SP, 0xC] \n\
/* 08017e04 */ SUBS R0, R1, R2 @ Set R0 to R1 - R2 \n\
/* 08017e06 */ LDR R1, [SP, 0x4] \n\
/* 08017e08 */ STR R0, [R1] \n\
/* 08017e0a */ LDR R2, [SP, 0x8] \n\
/* 08017e0c */ CMP R2, R10 @ Compare R2 and R10 \n\
/* 08017e0e */ BLT branch_08017e18 \n\
/* 08017e10 */ CMP R2, R6 @ Check R2 - R6 \n\
/* 08017e12 */ BGT branch_08017e18 \n\
/* 08017e14 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08017e16 */ B branch_08017e1a \n\
 \n\
branch_08017e18: \n\
/* 08017e18 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08017e1a: \n\
/* 08017e1a */ ADD SP, 0x18 \n\
/* 08017e1c */ POP {R3-R5} \n\
/* 08017e1e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08017e20 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08017e22 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08017e24 */ POP {R4-R7} \n\
/* 08017e26 */ POP {R1} \n\
/* 08017e28 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
