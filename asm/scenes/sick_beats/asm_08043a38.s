asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043a38 \n\
/* 08043a38 */ PUSH {R4-R7, LR} \n\
/* 08043a3a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08043a3c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08043a3e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08043a40 */ PUSH {R5-R7} \n\
/* 08043a42 */ SUB SP, 0x34 \n\
/* 08043a44 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08043a46 */ STR R1, [SP, 0x1C] \n\
/* 08043a48 */ STR R2, [SP, 0x20] \n\
/* 08043a4a */ LDR R0, =D_030055d0 \n\
/* 08043a4c */ LDR R0, [R0] \n\
/* 08043a4e */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 08043a50 */ STR R0, [SP, 0x24] \n\
/* 08043a52 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08043a54 */ LDR R0, [R0, 0x8] \n\
/* 08043a56 */ STR R0, [SP, 0x28] \n\
/* 08043a58 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043a5a */ STR R1, [SP, 0x2C] \n\
/* 08043a5c */ BL func_080100f0 \n\
/* 08043a60 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08043a62 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08043a64 */ LDR R0, [R2, 0x8] \n\
/* 08043a66 */ BL func_08010110 \n\
/* 08043a6a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08043a6c */ MOVS R3, 0x2F @ Set R3 to 0x2F \n\
/* 08043a6e */ ADD R3, R10 @ Add R10 to R3 \n\
/* 08043a70 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08043a72 */ LDRB R0, [R3] \n\
/* 08043a74 */ STR R0, [SP, 0x30] \n\
/* 08043a76 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08043a78 */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 08043a7a */ LDRB R0, [R0] \n\
/* 08043a7c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08043a7e */ BLS branch_08043ad2 \n\
/* 08043a80 */ LDR R1, [SP, 0x30] \n\
/* 08043a82 */ CMP R1, 0x8 @ Compare R1 and 0x8 \n\
/* 08043a84 */ BNE branch_08043a8a \n\
/* 08043a86 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043a88 */ STR R2, [SP, 0x30] \n\
 \n\
branch_08043a8a: \n\
/* 08043a8a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043a8c */ LDRB R0, [R3] \n\
/* 08043a8e */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 08043a90 */ BNE branch_08043a96 \n\
/* 08043a92 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08043a94 */ STR R0, [SP, 0x30] \n\
 \n\
branch_08043a96: \n\
/* 08043a96 */ LDR R1, =D_08931f14 \n\
/* 08043a98 */ STR R1, [SP, 0x1C] \n\
/* 08043a9a */ LDR R4, =D_03005380 \n\
/* 08043a9c */ LDR R0, [R4] \n\
/* 08043a9e */ LDR R1, =D_08931edc \n\
/* 08043aa0 */ LSLS R3, R5, 0x10 \n\
/* 08043aa2 */ ASRS R3, R3, 0x10 \n\
/* 08043aa4 */ LSLS R2, R7, 0x10 \n\
/* 08043aa6 */ ASRS R2, R2, 0x10 \n\
/* 08043aa8 */ STR R2, [SP] \n\
/* 08043aaa */ LDR R2, =0x87ff \n\
/* 08043aac */ STR R2, [SP, 0x4] \n\
/* 08043aae */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08043ab0 */ STR R2, [SP, 0x8] \n\
/* 08043ab2 */ LDR R2, [SP, 0x2C] \n\
/* 08043ab4 */ STR R2, [SP, 0xC] \n\
/* 08043ab6 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08043ab8 */ STR R2, [SP, 0x10] \n\
/* 08043aba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043abc */ BL func_0804d160 \n\
/* 08043ac0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08043ac2 */ LDR R0, [R4] \n\
/* 08043ac4 */ LSLS R1, R1, 0x10 \n\
/* 08043ac6 */ ASRS R1, R1, 0x10 \n\
/* 08043ac8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043aca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043acc */ LDRSB R2, [R3, R2] \n\
/* 08043ace */ BL func_0804d8c4 \n\
 \n\
branch_08043ad2: \n\
/* 08043ad2 */ LDR R4, =0xffff \n\
/* 08043ad4 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08043ad6 */ LDRH R0, [R1] \n\
/* 08043ad8 */ LSLS R0, R0, 0x15 \n\
/* 08043ada */ LSRS R0, R0, 0x1B \n\
/* 08043adc */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08043ade */ BEQ branch_08043b7c \n\
/* 08043ae0 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08043ae2 */ BGT branch_08043b04 \n\
/* 08043ae4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08043ae6 */ BEQ branch_08043b10 \n\
/* 08043ae8 */ B branch_08043cd4 \n\
\n\
.ltorg \n\
 \n\
branch_08043b04: \n\
/* 08043b04 */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 08043b06 */ BEQ branch_08043bec \n\
/* 08043b08 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 08043b0a */ BNE branch_08043b0e \n\
/* 08043b0c */ B branch_08043c60 \n\
 \n\
branch_08043b0e: \n\
/* 08043b0e */ B branch_08043cd4 \n\
 \n\
branch_08043b10: \n\
/* 08043b10 */ LSLS R6, R5, 0x10 \n\
/* 08043b12 */ ASRS R6, R6, 0x10 \n\
/* 08043b14 */ LSLS R4, R7, 0x10 \n\
/* 08043b16 */ ASRS R4, R4, 0x10 \n\
/* 08043b18 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08043b1a */ LSLS R2, R2, 0x8 \n\
/* 08043b1c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08043b1e */ STR R2, [SP] \n\
/* 08043b20 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043b22 */ LSLS R0, R0, 0x1 \n\
/* 08043b24 */ STR R0, [SP, 0x4] \n\
/* 08043b26 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08043b28 */ STR R5, [SP, 0x8] \n\
/* 08043b2a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08043b2c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08043b2e */ STR R3, [SP, 0xC] \n\
/* 08043b30 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08043b32 */ STR R0, [SP, 0x10] \n\
/* 08043b34 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08043b36 */ STR R0, [SP, 0x14] \n\
/* 08043b38 */ STR R5, [SP, 0x18] \n\
/* 08043b3a */ LDR R0, [SP, 0x1C] \n\
/* 08043b3c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043b3e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08043b40 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08043b42 */ BL func_0800fa6c \n\
/* 08043b46 */ STR R0, [SP, 0x2C] \n\
/* 08043b48 */ LDR R0, =D_03005380 \n\
/* 08043b4a */ LDR R0, [R0] \n\
/* 08043b4c */ LDR R1, =D_08931b6c \n\
/* 08043b4e */ STR R4, [SP] \n\
/* 08043b50 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043b52 */ STR R2, [SP, 0x4] \n\
/* 08043b54 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043b56 */ STR R3, [SP, 0x8] \n\
/* 08043b58 */ STR R5, [SP, 0xC] \n\
/* 08043b5a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08043b5c */ STR R2, [SP, 0x10] \n\
/* 08043b5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043b60 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08043b62 */ BL func_0804d160 \n\
/* 08043b66 */ LSLS R0, R0, 0x10 \n\
/* 08043b68 */ LSRS R4, R0, 0x10 \n\
/* 08043b6a */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08043b6c */ BL func_08043124 \n\
/* 08043b70 */ B branch_08043cd8 \n\
\n\
.ltorg \n\
 \n\
branch_08043b7c: \n\
/* 08043b7c */ LSLS R5, R5, 0x10 \n\
/* 08043b7e */ ASRS R5, R5, 0x10 \n\
/* 08043b80 */ LSLS R4, R7, 0x10 \n\
/* 08043b82 */ ASRS R4, R4, 0x10 \n\
/* 08043b84 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08043b86 */ LSLS R0, R0, 0x8 \n\
/* 08043b88 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08043b8a */ STR R0, [SP] \n\
/* 08043b8c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043b8e */ LSLS R0, R0, 0x1 \n\
/* 08043b90 */ STR R0, [SP, 0x4] \n\
/* 08043b92 */ LDR R0, =0xfffffe00 \n\
/* 08043b94 */ STR R0, [SP, 0x8] \n\
/* 08043b96 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043b98 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08043b9a */ STR R1, [SP, 0xC] \n\
/* 08043b9c */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08043b9e */ STR R0, [SP, 0x10] \n\
/* 08043ba0 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08043ba2 */ STR R0, [SP, 0x14] \n\
/* 08043ba4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08043ba6 */ STR R6, [SP, 0x18] \n\
/* 08043ba8 */ LDR R0, [SP, 0x1C] \n\
/* 08043baa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043bac */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08043bae */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08043bb0 */ BL func_0800fa6c \n\
/* 08043bb4 */ STR R0, [SP, 0x2C] \n\
/* 08043bb6 */ LDR R0, =D_03005380 \n\
/* 08043bb8 */ LDR R0, [R0] \n\
/* 08043bba */ LDR R1, =D_08931bac \n\
/* 08043bbc */ STR R4, [SP] \n\
/* 08043bbe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043bc0 */ STR R2, [SP, 0x4] \n\
/* 08043bc2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043bc4 */ STR R3, [SP, 0x8] \n\
/* 08043bc6 */ STR R6, [SP, 0xC] \n\
/* 08043bc8 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08043bca */ STR R2, [SP, 0x10] \n\
/* 08043bcc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043bce */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08043bd0 */ BL func_0804d160 \n\
/* 08043bd4 */ LSLS R0, R0, 0x10 \n\
/* 08043bd6 */ LSRS R4, R0, 0x10 \n\
/* 08043bd8 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08043bda */ BL func_08043124 \n\
/* 08043bde */ B branch_08043cd8 \n\
\n\
.ltorg \n\
 \n\
branch_08043bec: \n\
/* 08043bec */ LSLS R5, R5, 0x10 \n\
/* 08043bee */ ASRS R5, R5, 0x10 \n\
/* 08043bf0 */ LSLS R4, R7, 0x10 \n\
/* 08043bf2 */ ASRS R4, R4, 0x10 \n\
/* 08043bf4 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08043bf6 */ LSLS R0, R0, 0x8 \n\
/* 08043bf8 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08043bfa */ STR R0, [SP] \n\
/* 08043bfc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043bfe */ LSLS R0, R0, 0x1 \n\
/* 08043c00 */ STR R0, [SP, 0x4] \n\
/* 08043c02 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043c04 */ LSLS R0, R0, 0x3 \n\
/* 08043c06 */ STR R0, [SP, 0x8] \n\
/* 08043c08 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043c0a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08043c0c */ STR R1, [SP, 0xC] \n\
/* 08043c0e */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08043c10 */ STR R0, [SP, 0x10] \n\
/* 08043c12 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08043c14 */ STR R0, [SP, 0x14] \n\
/* 08043c16 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08043c18 */ STR R6, [SP, 0x18] \n\
/* 08043c1a */ LDR R0, [SP, 0x1C] \n\
/* 08043c1c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043c1e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08043c20 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08043c22 */ BL func_0800fa6c \n\
/* 08043c26 */ STR R0, [SP, 0x2C] \n\
/* 08043c28 */ LDR R0, =D_03005380 \n\
/* 08043c2a */ LDR R0, [R0] \n\
/* 08043c2c */ LDR R1, =D_08931b6c \n\
/* 08043c2e */ STR R4, [SP] \n\
/* 08043c30 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043c32 */ STR R2, [SP, 0x4] \n\
/* 08043c34 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043c36 */ STR R3, [SP, 0x8] \n\
/* 08043c38 */ STR R6, [SP, 0xC] \n\
/* 08043c3a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08043c3c */ STR R2, [SP, 0x10] \n\
/* 08043c3e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08043c40 */ LSLS R2, R2, 0x6 \n\
/* 08043c42 */ STR R2, [SP, 0x14] \n\
/* 08043c44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043c46 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08043c48 */ BL func_0804d294 \n\
/* 08043c4c */ LSLS R0, R0, 0x10 \n\
/* 08043c4e */ LSRS R4, R0, 0x10 \n\
/* 08043c50 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08043c52 */ BL func_08043124 \n\
/* 08043c56 */ B branch_08043cd8 \n\
\n\
.ltorg \n\
 \n\
branch_08043c60: \n\
/* 08043c60 */ LSLS R5, R5, 0x10 \n\
/* 08043c62 */ ASRS R5, R5, 0x10 \n\
/* 08043c64 */ LSLS R4, R7, 0x10 \n\
/* 08043c66 */ ASRS R4, R4, 0x10 \n\
/* 08043c68 */ MOVS R0, 0x88 @ Set R0 to 0x88 \n\
/* 08043c6a */ LSLS R0, R0, 0x8 \n\
/* 08043c6c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08043c6e */ STR R0, [SP] \n\
/* 08043c70 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043c72 */ LSLS R0, R0, 0x1 \n\
/* 08043c74 */ STR R0, [SP, 0x4] \n\
/* 08043c76 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043c78 */ LSLS R0, R0, 0x2 \n\
/* 08043c7a */ STR R0, [SP, 0x8] \n\
/* 08043c7c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043c7e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08043c80 */ STR R1, [SP, 0xC] \n\
/* 08043c82 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 08043c84 */ STR R0, [SP, 0x10] \n\
/* 08043c86 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08043c88 */ STR R0, [SP, 0x14] \n\
/* 08043c8a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08043c8c */ STR R6, [SP, 0x18] \n\
/* 08043c8e */ LDR R0, [SP, 0x1C] \n\
/* 08043c90 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043c92 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08043c94 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08043c96 */ BL func_0800fa6c \n\
/* 08043c9a */ STR R0, [SP, 0x2C] \n\
/* 08043c9c */ LDR R0, =D_03005380 \n\
/* 08043c9e */ LDR R0, [R0] \n\
/* 08043ca0 */ LDR R1, =D_08931bac \n\
/* 08043ca2 */ STR R4, [SP] \n\
/* 08043ca4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08043ca6 */ STR R2, [SP, 0x4] \n\
/* 08043ca8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043caa */ STR R3, [SP, 0x8] \n\
/* 08043cac */ STR R6, [SP, 0xC] \n\
/* 08043cae */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08043cb0 */ STR R2, [SP, 0x10] \n\
/* 08043cb2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08043cb4 */ LSLS R2, R2, 0x5 \n\
/* 08043cb6 */ STR R2, [SP, 0x14] \n\
/* 08043cb8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043cba */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08043cbc */ BL func_0804d294 \n\
/* 08043cc0 */ LSLS R0, R0, 0x10 \n\
/* 08043cc2 */ LSRS R4, R0, 0x10 \n\
/* 08043cc4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043cc6 */ BL func_08043124 \n\
/* 08043cca */ B branch_08043cd8 \n\
\n\
.ltorg \n\
 \n\
branch_08043cd4: \n\
/* 08043cd4 */ BL func_08018068 \n\
 \n\
branch_08043cd8: \n\
/* 08043cd8 */ LSLS R0, R4, 0x10 \n\
/* 08043cda */ ASRS R1, R0, 0x10 \n\
/* 08043cdc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08043cde */ BLT branch_08043cf2 \n\
/* 08043ce0 */ LDR R0, =D_03005380 \n\
/* 08043ce2 */ LDR R0, [R0] \n\
/* 08043ce4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08043ce6 */ ADDS R2, 0x2F @ Add 0x2F to R2 \n\
/* 08043ce8 */ LDRB R2, [R2] \n\
/* 08043cea */ LSLS R2, R2, 0x18 \n\
/* 08043cec */ ASRS R2, R2, 0x18 \n\
/* 08043cee */ BL func_0804d8c4 \n\
 \n\
branch_08043cf2: \n\
/* 08043cf2 */ LDR R0, [SP, 0x2C] \n\
/* 08043cf4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043cf6 */ BEQ branch_08043d84 \n\
/* 08043cf8 */ LDR R1, =func_08043a2c \n\
/* 08043cfa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08043cfc */ BL func_08010238 \n\
/* 08043d00 */ LDR R0, [SP, 0x2C] \n\
/* 08043d02 */ LDR R1, [SP, 0x30] \n\
/* 08043d04 */ BL func_080100a8 \n\
/* 08043d08 */ BL func_0800c1a8 \n\
/* 08043d0c */ LSLS R0, R0, 0x8 \n\
/* 08043d0e */ MOVS R1, 0x7D @ Set R1 to 0x7D \n\
/* 08043d10 */ BL __udivsi3 \n\
/* 08043d14 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08043d16 */ LSLS R1, R1, 0x10 \n\
/* 08043d18 */ LSRS R1, R1, 0x10 \n\
/* 08043d1a */ LDR R0, [SP, 0x2C] \n\
/* 08043d1c */ BL func_08010174 \n\
/* 08043d20 */ LDR R0, [SP, 0x28] \n\
/* 08043d22 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08043d24 */ BL func_08010040 \n\
/* 08043d28 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08043d2a */ ADDS R1, 0x2E @ Add 0x2E to R1 \n\
/* 08043d2c */ LDRB R0, [R1] \n\
/* 08043d2e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08043d30 */ STRB R0, [R1] \n\
/* 08043d32 */ LSLS R0, R0, 0x18 \n\
/* 08043d34 */ LSRS R1, R0, 0x18 \n\
/* 08043d36 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08043d38 */ BEQ branch_08043d74 \n\
/* 08043d3a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08043d3c */ LDRB R0, [R1, 0x4] \n\
/* 08043d3e */ BL func_080436a8 \n\
/* 08043d42 */ LDRB R1, [R0, 0x4] \n\
/* 08043d44 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 08043d46 */ STRB R1, [R0, 0x4] \n\
/* 08043d48 */ ADD R2, SP, 0x30 \n\
/* 08043d4a */ LDRB R2, [R2] \n\
/* 08043d4c */ STRB R2, [R0, 0x5] \n\
/* 08043d4e */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08043d50 */ LDRB R0, [R3] \n\
/* 08043d52 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08043d54 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08043d56 */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 08043d58 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08043d5a */ STRB R0, [R3] \n\
/* 08043d5c */ LDR R1, =s_block_hit_seqData \n\
/* 08043d5e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08043d60 */ BL func_0800267c \n\
/* 08043d64 */ B branch_08043d84 \n\
\n\
.ltorg \n\
 \n\
branch_08043d74: \n\
/* 08043d74 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08043d76 */ LDRB R0, [R2, 0x4] \n\
/* 08043d78 */ LDR R3, [SP, 0x24] \n\
/* 08043d7a */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 08043d7c */ STRB R1, [R0] \n\
/* 08043d7e */ LDR R0, [SP, 0x20] \n\
/* 08043d80 */ BL func_08002634 \n\
 \n\
branch_08043d84: \n\
/* 08043d84 */ LDR R0, [SP, 0x2C] \n\
/* 08043d86 */ ADD SP, 0x34 \n\
/* 08043d88 */ POP {R3-R5} \n\
/* 08043d8a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08043d8c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08043d8e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08043d90 */ POP {R4-R7} \n\
/* 08043d92 */ POP {R1} \n\
/* 08043d94 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
