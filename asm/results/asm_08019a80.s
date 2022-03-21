asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08019a80 \n\
/* 08019a80 */ PUSH {R4-R7, LR} \n\
/* 08019a82 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08019a84 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08019a86 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08019a88 */ PUSH {R5-R7} \n\
/* 08019a8a */ SUB SP, 0x24 \n\
/* 08019a8c */ LDR R0, =D_089d7980 \n\
/* 08019a8e */ LDR R0, [R0] \n\
/* 08019a90 */ LDR R5, [R0, 0x78] \n\
/* 08019a92 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08019a94 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08019a96 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08019a98 */ ADDS R3, 0x7C @ Add 0x7C to R3 \n\
/* 08019a9a */ LDR R1, =D_030046a4 \n\
/* 08019a9c */ LDR R0, [R1] \n\
/* 08019a9e */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08019aa0 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08019aa2 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 08019aa4 */ MOVS R4, 0x26 @ Set R4 to 0x26 \n\
/* 08019aa6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08019aa8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08019aaa */ MOVS R7, 0x94 @ Set R7 to 0x94 \n\
/* 08019aac */ LSLS R7, R7, 0x1 \n\
/* 08019aae */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08019ab0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08019ab2 */ STRB R2, [R0] \n\
/* 08019ab4 */ LDR R0, [R5] \n\
/* 08019ab6 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08019ab8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019aba */ BEQ branch_08019b4c \n\
 \n\
branch_08019abc: \n\
/* 08019abc */ LDRH R0, [R3] \n\
/* 08019abe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019ac0 */ BEQ branch_08019b42 \n\
/* 08019ac2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08019ac4 */ LDR R2, [R5] \n\
/* 08019ac6 */ LDRB R0, [R2, 0x8] \n\
/* 08019ac8 */ MOVS R4, 0x81 @ Set R4 to 0x81 \n\
/* 08019aca */ NEGS R4, R4 @ Set R4 to -R4 \n\
/* 08019acc */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08019ace */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08019ad0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08019ad2 */ LSLS R0, R0, 0x18 \n\
/* 08019ad4 */ LSRS R1, R0, 0x18 \n\
/* 08019ad6 */ LDRB R0, [R2, 0x9] \n\
/* 08019ad8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019ada */ BNE branch_08019af0 \n\
/* 08019adc */ LDRH R0, [R3, 0xA] \n\
/* 08019ade */ LDRH R7, [R2, 0xE] \n\
/* 08019ae0 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08019ae2 */ BLS branch_08019afa \n\
/* 08019ae4 */ B branch_08019b10 \n\
\n\
.ltorg \n\
 \n\
branch_08019af0: \n\
/* 08019af0 */ LDRH R0, [R3, 0x10] \n\
/* 08019af2 */ LDRH R7, [R2, 0xE] \n\
/* 08019af4 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 08019af6 */ BLS branch_08019afa \n\
/* 08019af8 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08019afa: \n\
/* 08019afa */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08019afc */ BNE branch_08019b10 \n\
/* 08019afe */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 08019b00 */ BNE branch_08019b0c \n\
/* 08019b02 */ LDRH R0, [R3, 0xC] \n\
/* 08019b04 */ LDRH R4, [R2, 0xC] \n\
/* 08019b06 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08019b08 */ BCS branch_08019b0c \n\
/* 08019b0a */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08019b0c: \n\
/* 08019b0c */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08019b0e */ BEQ branch_08019b42 \n\
 \n\
branch_08019b10: \n\
/* 08019b10 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019b12 */ BEQ branch_08019b2a \n\
/* 08019b14 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08019b16 */ LDR R0, [R7] \n\
/* 08019b18 */ MOVS R1, 0x94 @ Set R1 to 0x94 \n\
/* 08019b1a */ LSLS R1, R1, 0x1 \n\
/* 08019b1c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08019b1e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08019b20 */ STRB R1, [R0] \n\
/* 08019b22 */ LDR R0, [R2, 0x4] \n\
/* 08019b24 */ STR R0, [SP, 0x14] \n\
/* 08019b26 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08019b28 */ B branch_08019b4c \n\
 \n\
branch_08019b2a: \n\
/* 08019b2a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08019b2c */ LSLS R0, R4, 0x2 \n\
/* 08019b2e */ MOV R1, SP @ Set R1 to SP \n\
/* 08019b30 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08019b32 */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 08019b34 */ LDR R0, [R2, 0x4] \n\
/* 08019b36 */ STR R0, [R1] \n\
/* 08019b38 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08019b3a */ ADD R8, R7 @ Add R7 to R8 \n\
/* 08019b3c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08019b3e */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08019b40 */ BHI branch_08019b4c \n\
 \n\
branch_08019b42: \n\
/* 08019b42 */ ADDS R3, 0x18 @ Add 0x18 to R3 \n\
/* 08019b44 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 08019b46 */ LDR R0, [R5] \n\
/* 08019b48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019b4a */ BNE branch_08019abc \n\
 \n\
branch_08019b4c: \n\
/* 08019b4c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08019b4e */ CMP R7, R8 @ Compare R7 and R8 \n\
/* 08019b50 */ BCS branch_08019bc6 \n\
/* 08019b52 */ LDR R1, =D_03005380 \n\
/* 08019b54 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08019b56 */ MOV R6, R12 @ Set R6 to R12 \n\
/* 08019b58 */ MOV R2, SP @ Set R2 to SP \n\
/* 08019b5a */ ADDS R2, 0x14 @ Add 0x14 to R2 \n\
/* 08019b5c */ STR R2, [SP, 0x20] \n\
/* 08019b5e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08019b60: \n\
/* 08019b60 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08019b62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08019b64 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08019b66 */ BL func_080087d4 \n\
/* 08019b6a */ LSLS R0, R0, 0x2 \n\
/* 08019b6c */ LDR R4, =D_089d7b34 \n\
/* 08019b6e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08019b70 */ LDR R1, [R0] \n\
/* 08019b72 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08019b74 */ BL strcpy \n\
/* 08019b78 */ LDR R0, [SP, 0x20] \n\
/* 08019b7a */ LDMIA R0!, {R1} \n\
/* 08019b7c */ STR R0, [SP, 0x20] \n\
/* 08019b7e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08019b80 */ BL func_080081a8 \n\
/* 08019b84 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08019b86 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08019b88 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08019b8a */ BL func_08019210 \n\
/* 08019b8e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019b90 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08019b92 */ LDR R0, [R2] \n\
/* 08019b94 */ STR R5, [SP] \n\
/* 08019b96 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08019b98 */ LSLS R2, R2, 0x4 \n\
/* 08019b9a */ STR R2, [SP, 0x4] \n\
/* 08019b9c */ STR R5, [SP, 0x8] \n\
/* 08019b9e */ STR R5, [SP, 0xC] \n\
/* 08019ba0 */ STR R5, [SP, 0x10] \n\
/* 08019ba2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019ba4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019ba6 */ BL func_0804d160 \n\
/* 08019baa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019bac */ LSLS R1, R1, 0x10 \n\
/* 08019bae */ MOV R4, R10 @ Set R4 to R10 \n\
/* 08019bb0 */ LDR R0, [R4] \n\
/* 08019bb2 */ LSRS R4, R1, 0x10 \n\
/* 08019bb4 */ ASRS R1, R1, 0x10 \n\
/* 08019bb6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08019bb8 */ BL func_0804d8c4 \n\
/* 08019bbc */ STRH R4, [R6] \n\
/* 08019bbe */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 08019bc0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08019bc2 */ CMP R7, R8 @ Compare R7 and R8 \n\
/* 08019bc4 */ BCC branch_08019b60 \n\
 \n\
branch_08019bc6: \n\
/* 08019bc6 */ LDR R0, =D_030046a4 \n\
/* 08019bc8 */ LDR R0, [R0] \n\
/* 08019bca */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08019bcc */ STRB R7, [R0, 0x12] \n\
/* 08019bce */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08019bd0 */ ADD SP, 0x24 \n\
/* 08019bd2 */ POP {R3-R5} \n\
/* 08019bd4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08019bd6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08019bd8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08019bda */ POP {R4-R7} \n\
/* 08019bdc */ POP {R1} \n\
/* 08019bde */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
