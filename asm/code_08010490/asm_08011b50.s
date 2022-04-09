asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011b50 \n\
/* 08011b50 */ PUSH {R4-R7, LR} \n\
/* 08011b52 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08011b54 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08011b56 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08011b58 */ PUSH {R5-R7} \n\
/* 08011b5a */ SUB SP, 0x4 \n\
/* 08011b5c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08011b5e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08011b60 */ LSLS R0, R6, 0x1 \n\
/* 08011b62 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011b64 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08011b66 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 08011b68 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08011b6a */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08011b6c */ ADD R2, R8 @ Add R8 to R2 \n\
/* 08011b6e */ LDRH R0, [R2] \n\
/* 08011b70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011b72 */ BNE branch_08011b7a \n\
/* 08011b74 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011b76 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08011b78 */ B branch_08011bda \n\
 \n\
branch_08011b7a: \n\
/* 08011b7a */ ADDS R1, R7, 0x1 @ Set R1 to R7 + 0x1 \n\
/* 08011b7c */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08011b7e */ LDRB R5, [R0] \n\
/* 08011b80 */ LDRH R2, [R2] \n\
/* 08011b82 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08011b84 */ ADDS R0, 0xFF @ Add 0xFF to R0 \n\
/* 08011b86 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08011b88 */ ASRS R4, R0, 0x8 \n\
/* 08011b8a */ LSLS R0, R4, 0x8 \n\
/* 08011b8c */ ADDS R1, R5, R4 @ Set R1 to R5 + R4 \n\
/* 08011b8e */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 08011b90 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 08011b92 */ LSLS R2, R2, 0x8 \n\
/* 08011b94 */ LSLS R1, R5, 0x8 \n\
/* 08011b96 */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 08011b98 */ ADDS R1, R7, R1 @ Set R1 to R7 + R1 \n\
/* 08011b9a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08011b9c */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08011b9e */ LSLS R3, R3, 0x2 \n\
/* 08011ba0 */ STR R3, [SP] \n\
/* 08011ba2 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08011ba4 */ BL func_0800186c \n\
/* 08011ba8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011baa */ MOV R12, R9 @ Set R12 to R9 \n\
/* 08011bac */ MOV R3, R10 @ Set R3 to R10 \n\
 \n\
branch_08011bae: \n\
/* 08011bae */ CMP R2, R6 @ Check R2 - R6 \n\
/* 08011bb0 */ BEQ branch_08011bbe \n\
/* 08011bb2 */ ADDS R1, R3, R2 @ Set R1 to R3 + R2 \n\
/* 08011bb4 */ LDRB R0, [R1] \n\
/* 08011bb6 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08011bb8 */ BLS branch_08011bbe \n\
/* 08011bba */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08011bbc */ STRB R0, [R1] \n\
 \n\
branch_08011bbe: \n\
/* 08011bbe */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08011bc0 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 08011bc2 */ BLS branch_08011bae \n\
/* 08011bc4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08011bc6 */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08011bc8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011bca */ STRB R1, [R0] \n\
/* 08011bcc */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08011bce */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08011bd0 */ STRH R1, [R0] \n\
/* 08011bd2 */ LDRB R0, [R7] \n\
/* 08011bd4 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08011bd6 */ STRB R0, [R7] \n\
/* 08011bd8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08011bda: \n\
/* 08011bda */ ADD SP, 0x4 \n\
/* 08011bdc */ POP {R3-R5} \n\
/* 08011bde */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08011be0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08011be2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08011be4 */ POP {R4-R7} \n\
/* 08011be6 */ POP {R1} \n\
/* 08011be8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
