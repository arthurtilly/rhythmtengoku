asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005e54 \n\
/* 08005e54 */ PUSH {R4-R7, LR} \n\
/* 08005e56 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08005e58 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08005e5a */ PUSH {R6, R7} \n\
/* 08005e5c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005e5e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08005e60 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08005e62 */ LDR R7, [SP, 0x1C] \n\
/* 08005e64 */ LDR R1, [R1] \n\
/* 08005e66 */ LDR R0, [R3] \n\
/* 08005e68 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08005e6a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005e6c */ LDR R6, [R0] \n\
/* 08005e6e */ LDR R0, [R7] \n\
/* 08005e70 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08005e72 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08005e74 */ LDRH R0, [R4, 0x4] \n\
/* 08005e76 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08005e78 */ BGE branch_08005e8c \n\
/* 08005e7a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08005e7c */ BLE branch_08005e8c \n\
/* 08005e7e */ LDRH R0, [R4, 0x6] \n\
/* 08005e80 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08005e82 */ CMP R6, R5 @ Check R6 - R5 \n\
/* 08005e84 */ BGE branch_08005e8c \n\
/* 08005e86 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08005e88 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005e8a */ BGT branch_08005e94 \n\
 \n\
branch_08005e8c: \n\
/* 08005e8c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005e8e */ STR R0, [R7] \n\
/* 08005e90 */ STR R0, [R3] \n\
/* 08005e92 */ B branch_08005ed6 \n\
 \n\
branch_08005e94: \n\
/* 08005e94 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005e96 */ BGE branch_08005ea0 \n\
/* 08005e98 */ STR R2, [R3] \n\
/* 08005e9a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005e9c */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08005e9e */ STR R0, [R1] \n\
 \n\
branch_08005ea0: \n\
/* 08005ea0 */ LDRH R0, [R4, 0x4] \n\
/* 08005ea2 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08005ea4 */ BLE branch_08005eae \n\
/* 08005ea6 */ SUBS R1, R2, R0 @ Set R1 to R2 - R0 \n\
/* 08005ea8 */ LDR R0, [R3] \n\
/* 08005eaa */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08005eac */ STR R0, [R3] \n\
 \n\
branch_08005eae: \n\
/* 08005eae */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005eb0 */ LDR R1, [R0] \n\
/* 08005eb2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005eb4 */ BGE branch_08005ec2 \n\
/* 08005eb6 */ LDR R0, [R7] \n\
/* 08005eb8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08005eba */ STR R0, [R7] \n\
/* 08005ebc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08005ebe */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08005ec0 */ STR R0, [R1] \n\
 \n\
branch_08005ec2: \n\
/* 08005ec2 */ CMP R12, R5 @ Compare R12 and R5 \n\
/* 08005ec4 */ BLE branch_08005ed0 \n\
/* 08005ec6 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08005ec8 */ SUBS R1, R0, R5 @ Set R1 to R0 - R5 \n\
/* 08005eca */ LDR R0, [R7] \n\
/* 08005ecc */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08005ece */ STR R0, [R7] \n\
 \n\
branch_08005ed0: \n\
/* 08005ed0 */ LDR R0, [R3] \n\
/* 08005ed2 */ LDR R1, [R7] \n\
/* 08005ed4 */ MULS R0, R1 @ Multiply R0 by R1 \n\
 \n\
branch_08005ed6: \n\
/* 08005ed6 */ POP {R3, R4} \n\
/* 08005ed8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005eda */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08005edc */ POP {R4-R7} \n\
/* 08005ede */ POP {R1} \n\
/* 08005ee0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
