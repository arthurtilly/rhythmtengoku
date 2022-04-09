asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019d9c \n\
/* 08019d9c */ PUSH {R4-R7, LR} \n\
/* 08019d9e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08019da0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08019da2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08019da4 */ PUSH {R5-R7} \n\
/* 08019da6 */ SUB SP, 0x4 \n\
/* 08019da8 */ LDR R0, =D_030046a4 \n\
/* 08019daa */ LDR R0, [R0] \n\
/* 08019dac */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019dae */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 08019db0 */ STR R1, [SP] \n\
/* 08019db2 */ LDRB R7, [R0, 0x12] \n\
/* 08019db4 */ LDRB R0, [R0, 0x13] \n\
/* 08019db6 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08019db8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08019dba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019dbc */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08019dbe */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08019dc0 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08019dc2 */ BCS branch_08019de2 \n\
/* 08019dc4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
 \n\
branch_08019dc6: \n\
/* 08019dc6 */ LDR R0, =D_03005380 \n\
/* 08019dc8 */ LDR R0, [R0] \n\
/* 08019dca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019dcc */ LDRSH R1, [R4, R3] \n\
/* 08019dce */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08019dd0 */ BL func_0804ddb0 \n\
/* 08019dd4 */ CMP R9, R0 @ Compare R9 and R0 \n\
/* 08019dd6 */ BCS branch_08019dda \n\
/* 08019dd8 */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_08019dda: \n\
/* 08019dda */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08019ddc */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019dde */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08019de0 */ BCC branch_08019dc6 \n\
 \n\
branch_08019de2: \n\
/* 08019de2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08019de4 */ ADDS R5, R7, 0x0 @ Set R5 to R7 + 0x0 \n\
/* 08019de6 */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019de8 */ BCS branch_08019e0c \n\
/* 08019dea */ LSLS R0, R5, 0x1 \n\
/* 08019dec */ LDR R1, [SP] \n\
/* 08019dee */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
 \n\
branch_08019df0: \n\
/* 08019df0 */ LDR R0, =D_03005380 \n\
/* 08019df2 */ LDR R0, [R0] \n\
/* 08019df4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019df6 */ LDRSH R1, [R4, R2] \n\
/* 08019df8 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08019dfa */ BL func_0804ddb0 \n\
/* 08019dfe */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08019e00 */ BCS branch_08019e04 \n\
/* 08019e02 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_08019e04: \n\
/* 08019e04 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08019e06 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019e08 */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019e0a */ BCC branch_08019df0 \n\
 \n\
branch_08019e0c: \n\
/* 08019e0c */ MOV R10, R6 @ Set R10 to R6 \n\
/* 08019e0e */ CMP R10, R9 @ Compare R10 and R9 \n\
/* 08019e10 */ BCS branch_08019e14 \n\
/* 08019e12 */ MOV R10, R9 @ Set R10 to R9 \n\
 \n\
branch_08019e14: \n\
/* 08019e14 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08019e16 */ BEQ branch_08019e94 \n\
/* 08019e18 */ SUBS R0, R7, 0x1 @ Set R0 to R7 - 0x1 \n\
/* 08019e1a */ LSLS R0, R0, 0x3 \n\
/* 08019e1c */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08019e1e */ SUBS R4, R1, R0 @ Set R4 to R1 - R0 \n\
/* 08019e20 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08019e22 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08019e24 */ BCS branch_08019e56 \n\
/* 08019e26 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08019e28 */ LSRS R1, R3, 0x1 \n\
/* 08019e2a */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08019e2c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08019e2e */ LSLS R0, R0, 0x10 \n\
/* 08019e30 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08019e32 */ LDR R6, [SP] \n\
 \n\
branch_08019e34: \n\
/* 08019e34 */ LDR R0, =D_03005380 \n\
/* 08019e36 */ LDR R0, [R0] \n\
/* 08019e38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019e3a */ LDRSH R1, [R6, R2] \n\
/* 08019e3c */ LSLS R3, R4, 0x10 \n\
/* 08019e3e */ ASRS R3, R3, 0x10 \n\
/* 08019e40 */ MOV R12, R3 @ Set R12 to R3 \n\
/* 08019e42 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08019e44 */ ASRS R2, R3, 0x10 \n\
/* 08019e46 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08019e48 */ BL func_0804d5d4 \n\
/* 08019e4c */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08019e4e */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08019e50 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019e52 */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08019e54 */ BCC branch_08019e34 \n\
 \n\
branch_08019e56: \n\
/* 08019e56 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08019e58 */ ADDS R5, R7, 0x0 @ Set R5 to R7 + 0x0 \n\
/* 08019e5a */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019e5c */ BCS branch_08019ecc \n\
/* 08019e5e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08019e60 */ LSRS R0, R1, 0x1 \n\
/* 08019e62 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08019e64 */ LSLS R7, R0, 0x10 \n\
/* 08019e66 */ LSLS R0, R5, 0x1 \n\
/* 08019e68 */ LDR R2, [SP] \n\
/* 08019e6a */ ADDS R6, R0, R2 @ Set R6 to R0 + R2 \n\
 \n\
branch_08019e6c: \n\
/* 08019e6c */ LDR R0, =D_03005380 \n\
/* 08019e6e */ LDR R0, [R0] \n\
/* 08019e70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019e72 */ LDRSH R1, [R6, R3] \n\
/* 08019e74 */ LSLS R3, R4, 0x10 \n\
/* 08019e76 */ ASRS R3, R3, 0x10 \n\
/* 08019e78 */ ASRS R2, R7, 0x10 \n\
/* 08019e7a */ BL func_0804d5d4 \n\
/* 08019e7e */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08019e80 */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08019e82 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019e84 */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019e86 */ BCC branch_08019e6c \n\
/* 08019e88 */ B branch_08019ecc \n\
\n\
.ltorg \n\
 \n\
branch_08019e94: \n\
/* 08019e94 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08019e96 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08019e98 */ LSLS R0, R0, 0x3 \n\
/* 08019e9a */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08019e9c */ SUBS R4, R1, R0 @ Set R4 to R1 - R0 \n\
/* 08019e9e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08019ea0 */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019ea2 */ BCS branch_08019ecc \n\
/* 08019ea4 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08019ea6 */ LSRS R1, R0, 0x1 \n\
/* 08019ea8 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08019eaa */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08019eac */ LSLS R7, R0, 0x10 \n\
/* 08019eae */ LDR R6, [SP] \n\
 \n\
branch_08019eb0: \n\
/* 08019eb0 */ LDR R0, =D_03005380 \n\
/* 08019eb2 */ LDR R0, [R0] \n\
/* 08019eb4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019eb6 */ LDRSH R1, [R6, R2] \n\
/* 08019eb8 */ LSLS R3, R4, 0x10 \n\
/* 08019eba */ ASRS R3, R3, 0x10 \n\
/* 08019ebc */ ASRS R2, R7, 0x10 \n\
/* 08019ebe */ BL func_0804d5d4 \n\
/* 08019ec2 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 08019ec4 */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08019ec6 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08019ec8 */ CMP R5, R8 @ Compare R5 and R8 \n\
/* 08019eca */ BCC branch_08019eb0 \n\
 \n\
branch_08019ecc: \n\
/* 08019ecc */ ADD SP, 0x4 \n\
/* 08019ece */ POP {R3-R5} \n\
/* 08019ed0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08019ed2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08019ed4 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08019ed6 */ POP {R4-R7} \n\
/* 08019ed8 */ POP {R0} \n\
/* 08019eda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
