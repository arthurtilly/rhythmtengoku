asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006b30 \n\
/* 08006b30 */ PUSH {R4-R7, LR} \n\
/* 08006b32 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08006b34 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08006b36 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08006b38 */ PUSH {R5-R7} \n\
/* 08006b3a */ SUB SP, 0x10 \n\
/* 08006b3c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006b3e */ LDR R6, [R4] \n\
/* 08006b40 */ LDR R7, [R6, 0x4] \n\
/* 08006b42 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08006b44 */ LDRSH R0, [R6, R1] \n\
/* 08006b46 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08006b48 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08006b4a */ LDRSH R1, [R4, R2] \n\
/* 08006b4c */ ADD R10, R1 @ Add R1 to R10 \n\
/* 08006b4e */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08006b50 */ LDRSH R3, [R6, R0] \n\
/* 08006b52 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006b54 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08006b56 */ LDRSH R0, [R4, R2] \n\
/* 08006b58 */ ADD R8, R0 @ Add R0 to R8 \n\
/* 08006b5a */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08006b5c */ LDRSH R3, [R4, R2] \n\
/* 08006b5e */ SUBS R3, R3, R1 @ Set R3 to R3 - R1 \n\
/* 08006b60 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08006b62 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08006b64 */ LDRSH R5, [R4, R3] \n\
/* 08006b66 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 08006b68 */ LDR R1, [R6, 0x10] \n\
/* 08006b6a */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08006b6c */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 08006b6e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08006b70 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 08006b72 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08006b74 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08006b76 */ STR R0, [SP] \n\
/* 08006b78 */ ADDS R0, R5, 0x2 @ Set R0 to R5 + 0x2 \n\
/* 08006b7a */ STR R0, [SP, 0x4] \n\
/* 08006b7c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08006b7e */ STR R0, [SP, 0x8] \n\
/* 08006b80 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08006b82 */ BL func_08005fe4 \n\
/* 08006b86 */ LDR R0, [R6, 0x14] \n\
/* 08006b88 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08006b8a */ LDRSH R1, [R4, R2] \n\
/* 08006b8c */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08006b8e */ LDRSH R2, [R4, R3] \n\
/* 08006b90 */ STR R5, [SP] \n\
/* 08006b92 */ STR R7, [SP, 0x4] \n\
/* 08006b94 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08006b96 */ STR R3, [SP, 0x8] \n\
/* 08006b98 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08006b9a */ STR R3, [SP, 0xC] \n\
/* 08006b9c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08006b9e */ BL func_0800620c \n\
/* 08006ba2 */ ADD SP, 0x10 \n\
/* 08006ba4 */ POP {R3-R5} \n\
/* 08006ba6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006ba8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08006baa */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08006bac */ POP {R4-R7} \n\
/* 08006bae */ POP {R0} \n\
/* 08006bb0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
