asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005b20 \n\
/* 08005b20 */ PUSH {R4-R7, LR} \n\
/* 08005b22 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08005b24 */ PUSH {R7} \n\
/* 08005b26 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08005b28 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08005b2a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005b2c */ LSLS R0, R0, 0x10 \n\
/* 08005b2e */ LSRS R7, R0, 0x10 \n\
/* 08005b30 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005b32 */ LDR R4, =D_03000908 \n\
/* 08005b34 */ LDRB R1, [R4] \n\
/* 08005b36 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005b38 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005b3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005b3c */ BEQ branch_08005b52 \n\
/* 08005b3e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_08005b40: \n\
/* 08005b40 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08005b42 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005b44 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005b46 */ BHI branch_08005bb4 \n\
/* 08005b48 */ LDRB R1, [R4] \n\
/* 08005b4a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005b4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005b4e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005b50 */ BNE branch_08005b40 \n\
 \n\
branch_08005b52: \n\
/* 08005b52 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005b54 */ BHI branch_08005bb4 \n\
/* 08005b56 */ LDR R1, [R6] \n\
/* 08005b58 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005b5a */ BEQ branch_08005b6c \n\
/* 08005b5c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08005b5e */ BL _call_via_r1 \n\
/* 08005b62 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08005b64 */ B branch_08005b6e \n\
\n\
.ltorg \n\
 \n\
branch_08005b6c: \n\
/* 08005b6c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
 \n\
branch_08005b6e: \n\
/* 08005b6e */ STR R1, [R4, 0xC] \n\
/* 08005b70 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005b72 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08005b74 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08005b76 */ BEQ branch_08005bb4 \n\
/* 08005b78 */ LDRB R0, [R4] \n\
/* 08005b7a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08005b7c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08005b7e */ STRB R0, [R4] \n\
/* 08005b80 */ LDRH R1, [R4] \n\
/* 08005b82 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005b84 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005b86 */ STRH R0, [R4] \n\
/* 08005b88 */ STR R6, [R4, 0x4] \n\
/* 08005b8a */ LDR R2, =D_03000900 \n\
/* 08005b8c */ LDR R0, [R2] \n\
/* 08005b8e */ STR R0, [R4, 0x8] \n\
/* 08005b90 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005b92 */ STRH R7, [R4, 0x2] \n\
/* 08005b94 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005b96 */ STR R0, [R4, 0x10] \n\
/* 08005b98 */ LDR R0, [SP, 0x18] \n\
/* 08005b9a */ STR R0, [R4, 0x14] \n\
/* 08005b9c */ STRH R1, [R4, 0x18] \n\
/* 08005b9e */ LDR R0, [R2] \n\
/* 08005ba0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08005ba2 */ LDR R1, =0x7fffffff \n\
/* 08005ba4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005ba6 */ STR R0, [R2] \n\
/* 08005ba8 */ LDR R0, [R4, 0x8] \n\
/* 08005baa */ B branch_08005bb8 \n\
\n\
.ltorg \n\
 \n\
branch_08005bb4: \n\
/* 08005bb4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005bb6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08005bb8: \n\
/* 08005bb8 */ POP {R3} \n\
/* 08005bba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005bbc */ POP {R4-R7} \n\
/* 08005bbe */ POP {R1} \n\
/* 08005bc0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
