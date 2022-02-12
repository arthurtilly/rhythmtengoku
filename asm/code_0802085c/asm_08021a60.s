asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021a60 \n\
/* 08021a60 */ PUSH {R4-R7, LR} \n\
/* 08021a62 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08021a64 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08021a66 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08021a68 */ PUSH {R5-R7} \n\
/* 08021a6a */ SUB SP, 0x1C \n\
/* 08021a6c */ STR R0, [SP, 0x14] \n\
/* 08021a6e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08021a70 */ LDR R7, =D_030055d0 \n\
/* 08021a72 */ LDR R4, [R7] \n\
/* 08021a74 */ ADDS R0, R4, 0x4 @ Set R0 to R4 + 0x4 \n\
/* 08021a76 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08021a78 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08021a7a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08021a7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021a7e */ STR R2, [SP, 0x18] \n\
/* 08021a80 */ LDRB R0, [R4] \n\
/* 08021a82 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08021a84 */ BNE branch_08021a8a \n\
/* 08021a86 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021a88 */ STR R3, [SP, 0x18] \n\
 \n\
branch_08021a8a: \n\
/* 08021a8a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08021a8c */ LDRB R1, [R6] \n\
/* 08021a8e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08021a90 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08021a92 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08021a94 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021a96 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021a98 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08021a9a */ STRB R0, [R6] \n\
/* 08021a9c */ LDR R0, [R7] \n\
/* 08021a9e */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 08021aa0 */ LDRB R0, [R0] \n\
/* 08021aa2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021aa4 */ BEQ branch_08021aaa \n\
/* 08021aa6 */ BL func_080219a8 \n\
 \n\
branch_08021aaa: \n\
/* 08021aaa */ LDR R0, [R7] \n\
/* 08021aac */ ADDS R0, 0x35 @ Add 0x35 to R0 \n\
/* 08021aae */ LDRB R0, [R0] \n\
/* 08021ab0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021ab2 */ BEQ branch_08021ab8 \n\
/* 08021ab4 */ BL func_08021a0c \n\
 \n\
branch_08021ab8: \n\
/* 08021ab8 */ LDR R1, [R7] \n\
/* 08021aba */ LDRB R0, [R1, 0x16] \n\
/* 08021abc */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021abe */ BLS branch_08021ac2 \n\
/* 08021ac0 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08021ac2: \n\
/* 08021ac2 */ LDRB R0, [R1] \n\
/* 08021ac4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021ac6 */ BNE branch_08021aca \n\
/* 08021ac8 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08021aca: \n\
/* 08021aca */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08021acc */ BEQ branch_08021ad0 \n\
/* 08021ace */ B branch_08021c08 \n\
 \n\
branch_08021ad0: \n\
/* 08021ad0 */ LDRH R0, [R6] \n\
/* 08021ad2 */ LSLS R0, R0, 0x17 \n\
/* 08021ad4 */ LSRS R0, R0, 0x1C \n\
/* 08021ad6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08021ad8 */ BEQ branch_08021ade \n\
/* 08021ada */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08021adc */ BNE branch_08021b6c \n\
 \n\
branch_08021ade: \n\
/* 08021ade */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021ae0 */ STR R2, [R6, 0x18] \n\
/* 08021ae2 */ STR R2, [R6, 0x1C] \n\
/* 08021ae4 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08021ae6 */ STR R0, [R6, 0x24] \n\
/* 08021ae8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08021aea */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 08021aec */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 08021aee */ STRB R0, [R1] \n\
/* 08021af0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08021af2 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 08021af4 */ STRB R2, [R0] \n\
/* 08021af6 */ LDRB R1, [R4, 0x4] \n\
/* 08021af8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08021afa */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021afc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021afe */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08021b00 */ STRB R0, [R4, 0x4] \n\
/* 08021b02 */ LDR R0, =D_03005380 \n\
/* 08021b04 */ LDR R0, [R0] \n\
/* 08021b06 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08021b08 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021b0a */ LDRSH R1, [R5, R2] \n\
/* 08021b0c */ LDR R2, =D_088ace14 \n\
/* 08021b0e */ STR R3, [SP] \n\
/* 08021b10 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08021b12 */ STR R3, [SP, 0x4] \n\
/* 08021b14 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08021b16 */ STR R3, [SP, 0x8] \n\
/* 08021b18 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021b1a */ BL func_0804d8f8 \n\
/* 08021b1e */ LDR R5, [SP, 0x18] \n\
/* 08021b20 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08021b22 */ BEQ branch_08021b3c \n\
/* 08021b24 */ LDR R0, [SP, 0x14] \n\
/* 08021b26 */ BL func_080180a0 \n\
/* 08021b2a */ BL func_08002634 \n\
/* 08021b2e */ B branch_08021b42 \n\
\n\
.ltorg \n\
 \n\
branch_08021b3c: \n\
/* 08021b3c */ LDR R0, =D_08a9e19c \n\
/* 08021b3e */ BL func_08002634 \n\
 \n\
branch_08021b42: \n\
/* 08021b42 */ BL func_08018068 \n\
/* 08021b46 */ LDR R0, [SP, 0x14] \n\
/* 08021b48 */ BL func_080180bc \n\
/* 08021b4c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08021b4e */ BL func_08018054 \n\
/* 08021b52 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08021b54 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08021b56 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021b58 */ BL func_08017928 \n\
/* 08021b5c */ BL func_08022170 \n\
/* 08021b60 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021b62 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08021b64 */ B branch_08021ce4 \n\
\n\
.ltorg \n\
 \n\
branch_08021b6c: \n\
/* 08021b6c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08021b6e */ LSLS R0, R0, 0x3 \n\
/* 08021b70 */ STR R0, [R6, 0x18] \n\
/* 08021b72 */ LDR R0, =0xfffffe00 \n\
/* 08021b74 */ STR R0, [R6, 0x1C] \n\
/* 08021b76 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08021b78 */ STR R0, [R6, 0x24] \n\
/* 08021b7a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08021b7c */ ADDS R1, 0x2D @ Add 0x2D to R1 \n\
/* 08021b7e */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 08021b80 */ STRB R0, [R1] \n\
/* 08021b82 */ LDR R0, [R7] \n\
/* 08021b84 */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 08021b86 */ LDRB R0, [R0] \n\
/* 08021b88 */ LDR R3, =D_088acd54 \n\
/* 08021b8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021b8c */ BEQ branch_08021b90 \n\
/* 08021b8e */ LDR R3, =D_088acfc4 \n\
 \n\
branch_08021b90: \n\
/* 08021b90 */ LDRB R1, [R4, 0x4] \n\
/* 08021b92 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08021b94 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021b96 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08021b98 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08021b9a */ STRB R0, [R4, 0x4] \n\
/* 08021b9c */ LDR R4, =D_03005380 \n\
/* 08021b9e */ LDR R0, [R4] \n\
/* 08021ba0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08021ba2 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 08021ba4 */ LDRSH R1, [R2, R5] \n\
/* 08021ba6 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08021ba8 */ STR R5, [SP] \n\
/* 08021baa */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08021bac */ STR R2, [SP, 0x4] \n\
/* 08021bae */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021bb0 */ STR R2, [SP, 0x8] \n\
/* 08021bb2 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08021bb4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021bb6 */ BL func_0804d8f8 \n\
/* 08021bba */ LDR R0, [R4] \n\
/* 08021bbc */ LDR R1, =D_088accfc \n\
/* 08021bbe */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08021bc0 */ STR R2, [SP] \n\
/* 08021bc2 */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 08021bc4 */ LSLS R2, R2, 0x7 \n\
/* 08021bc6 */ STR R2, [SP, 0x4] \n\
/* 08021bc8 */ STR R5, [SP, 0x8] \n\
/* 08021bca */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08021bcc */ STR R3, [SP, 0xC] \n\
/* 08021bce */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08021bd0 */ STR R2, [SP, 0x10] \n\
/* 08021bd2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021bd4 */ MOVS R3, 0x9E @ Set R3 to 0x9E \n\
/* 08021bd6 */ BL func_0804d160 \n\
/* 08021bda */ LDR R5, [SP, 0x18] \n\
/* 08021bdc */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08021bde */ BNE branch_08021be8 \n\
/* 08021be0 */ LDR R1, =D_08a9e14c \n\
/* 08021be2 */ LDR R0, [SP, 0x14] \n\
/* 08021be4 */ BL func_0801808c \n\
 \n\
branch_08021be8: \n\
/* 08021be8 */ BL func_08022114 \n\
/* 08021bec */ B branch_08021ce4 \n\
\n\
.ltorg \n\
 \n\
branch_08021c08: \n\
/* 08021c08 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08021c0a */ LSLS R0, R0, 0x4 \n\
/* 08021c0c */ STR R0, [R6, 0x18] \n\
/* 08021c0e */ LDR R0, =0xfffffe00 \n\
/* 08021c10 */ STR R0, [R6, 0x1C] \n\
/* 08021c12 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08021c14 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 08021c16 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08021c18 */ STRB R1, [R0] \n\
/* 08021c1a */ LDR R0, [R7] \n\
/* 08021c1c */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 08021c1e */ LDRB R0, [R0] \n\
/* 08021c20 */ LDR R3, =D_088acc94 \n\
/* 08021c22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021c24 */ BEQ branch_08021c28 \n\
/* 08021c26 */ LDR R3, =D_088acf7c \n\
 \n\
branch_08021c28: \n\
/* 08021c28 */ LDRB R1, [R4, 0x4] \n\
/* 08021c2a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08021c2c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08021c2e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021c30 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08021c32 */ STRB R0, [R4, 0x4] \n\
/* 08021c34 */ LDR R4, =D_03005380 \n\
/* 08021c36 */ LDR R0, [R4] \n\
/* 08021c38 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08021c3a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021c3c */ LDRSH R1, [R5, R2] \n\
/* 08021c3e */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08021c40 */ STR R5, [SP] \n\
/* 08021c42 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08021c44 */ STR R2, [SP, 0x4] \n\
/* 08021c46 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08021c48 */ STR R2, [SP, 0x8] \n\
/* 08021c4a */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08021c4c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021c4e */ BL func_0804d8f8 \n\
/* 08021c52 */ LDR R0, [R4] \n\
/* 08021c54 */ LDR R1, =D_088accfc \n\
/* 08021c56 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08021c58 */ STR R2, [SP] \n\
/* 08021c5a */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 08021c5c */ LSLS R2, R2, 0x7 \n\
/* 08021c5e */ STR R2, [SP, 0x4] \n\
/* 08021c60 */ STR R5, [SP, 0x8] \n\
/* 08021c62 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08021c64 */ STR R3, [SP, 0xC] \n\
/* 08021c66 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08021c68 */ STR R2, [SP, 0x10] \n\
/* 08021c6a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08021c6c */ MOVS R3, 0x9E @ Set R3 to 0x9E \n\
/* 08021c6e */ BL func_0804d160 \n\
/* 08021c72 */ LDRH R0, [R6] \n\
/* 08021c74 */ LSLS R0, R0, 0x17 \n\
/* 08021c76 */ LSRS R0, R0, 0x1C \n\
/* 08021c78 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08021c7a */ BEQ branch_08021c98 \n\
/* 08021c7c */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08021c7e */ BEQ branch_08021cb0 \n\
/* 08021c80 */ B branch_08021cba \n\
\n\
.ltorg \n\
 \n\
branch_08021c98: \n\
/* 08021c98 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08021c9a */ BL func_0800c3a4 \n\
/* 08021c9e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08021ca0 */ STRH R0, [R5, 0xA] \n\
/* 08021ca2 */ LDR R0, =D_08a9e1ec \n\
/* 08021ca4 */ BL func_08002634 \n\
/* 08021ca8 */ B branch_08021cba \n\
\n\
.ltorg \n\
 \n\
branch_08021cb0: \n\
/* 08021cb0 */ MOVS R0, 0x6C @ Set R0 to 0x6C \n\
/* 08021cb2 */ BL func_0800c3a4 \n\
/* 08021cb6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021cb8 */ STRH R0, [R1, 0xC] \n\
 \n\
branch_08021cba: \n\
/* 08021cba */ LDR R0, =D_030055d0 \n\
/* 08021cbc */ LDR R0, [R0] \n\
/* 08021cbe */ LDRB R0, [R0] \n\
/* 08021cc0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08021cc2 */ BNE branch_08021ce0 \n\
/* 08021cc4 */ BL func_0800c3b8 \n\
/* 08021cc8 */ LSLS R0, R0, 0x10 \n\
/* 08021cca */ LSRS R0, R0, 0x10 \n\
/* 08021ccc */ LDR R3, =D_088ad0c4 \n\
/* 08021cce */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08021cd0 */ SUBS R1, 0x20 @ Subtract 0x20 from R1 \n\
/* 08021cd2 */ STR R1, [SP] \n\
/* 08021cd4 */ LDR R1, =D_03004be4 \n\
/* 08021cd6 */ STR R1, [SP, 0x4] \n\
/* 08021cd8 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08021cda */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08021cdc */ BL func_08001fe0 \n\
 \n\
branch_08021ce0: \n\
/* 08021ce0 */ BL func_08022114 \n\
 \n\
branch_08021ce4: \n\
/* 08021ce4 */ LDR R2, [SP, 0x18] \n\
/* 08021ce6 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08021ce8 */ BEQ branch_08021cfa \n\
/* 08021cea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021cec */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08021cee */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08021cf0 */ BEQ branch_08021cf4 \n\
/* 08021cf2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
 \n\
branch_08021cf4: \n\
/* 08021cf4 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 08021cf6 */ BL func_0802139c \n\
 \n\
branch_08021cfa: \n\
/* 08021cfa */ LDR R0, =D_030055d0 \n\
/* 08021cfc */ LDR R1, [R0] \n\
/* 08021cfe */ LDRH R2, [R1, 0x30] \n\
/* 08021d00 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08021d02 */ BEQ branch_08021d18 \n\
/* 08021d04 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 08021d06 */ STRH R2, [R1, 0x30] \n\
/* 08021d08 */ LDR R0, =D_03005380 \n\
/* 08021d0a */ LDR R0, [R0] \n\
/* 08021d0c */ MOVS R5, 0x2E @ Set R5 to 0x2E \n\
/* 08021d0e */ LDRSH R1, [R1, R5] \n\
/* 08021d10 */ LSLS R2, R2, 0x18 \n\
/* 08021d12 */ ASRS R2, R2, 0x18 \n\
/* 08021d14 */ BL func_0804cebc \n\
 \n\
branch_08021d18: \n\
/* 08021d18 */ ADD SP, 0x1C \n\
/* 08021d1a */ POP {R3-R5} \n\
/* 08021d1c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08021d1e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08021d20 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08021d22 */ POP {R4-R7} \n\
/* 08021d24 */ POP {R0} \n\
/* 08021d26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
