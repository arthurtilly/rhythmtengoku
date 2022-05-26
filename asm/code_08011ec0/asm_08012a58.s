asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012a58 \n\
/* 08012a58 */ PUSH {R4-R7, LR} \n\
/* 08012a5a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08012a5c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08012a5e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08012a60 */ PUSH {R5-R7} \n\
/* 08012a62 */ SUB SP, 0x14 \n\
/* 08012a64 */ LDR R0, =D_030046a4 \n\
/* 08012a66 */ LDR R0, [R0] \n\
/* 08012a68 */ MOVS R1, 0xD0 @ Set R1 to 0xD0 \n\
/* 08012a6a */ LSLS R1, R1, 0x2 \n\
/* 08012a6c */ ADDS R7, R0, R1 @ Set R7 to R0 + R1 \n\
/* 08012a6e */ LDR R2, =(D_03004b10 + 0x10) \n\
/* 08012a70 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08012a72 */ LDR R4, =D_03005380 \n\
/* 08012a74 */ LDR R0, [R4] \n\
/* 08012a76 */ LDR R1, =D_08902c10 \n\
/* 08012a78 */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 08012a7a */ STR R2, [SP] \n\
/* 08012a7c */ LDR R2, =0x8878 \n\
/* 08012a7e */ STR R2, [SP, 0x4] \n\
/* 08012a80 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08012a82 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012a84 */ STR R3, [SP, 0x8] \n\
/* 08012a86 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08012a88 */ STR R6, [SP, 0xC] \n\
/* 08012a8a */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08012a8c */ LSLS R5, R5, 0x8 \n\
/* 08012a8e */ STR R5, [SP, 0x10] \n\
/* 08012a90 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012a92 */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 08012a94 */ BL func_0804d160 \n\
/* 08012a98 */ STRH R0, [R7, 0x6] \n\
/* 08012a9a */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 08012a9c */ LDRSH R0, [R7, R1] \n\
/* 08012a9e */ BL func_080140f8 \n\
/* 08012aa2 */ LDR R0, [R4] \n\
/* 08012aa4 */ LDR R1, =D_08902c30 \n\
/* 08012aa6 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08012aa8 */ STR R2, [SP] \n\
/* 08012aaa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08012aac */ LSLS R2, R2, 0x4 \n\
/* 08012aae */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08012ab0 */ STR R2, [SP, 0x4] \n\
/* 08012ab2 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08012ab4 */ STR R3, [SP, 0x8] \n\
/* 08012ab6 */ STR R6, [SP, 0xC] \n\
/* 08012ab8 */ STR R5, [SP, 0x10] \n\
/* 08012aba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012abc */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08012abe */ BL func_0804d160 \n\
/* 08012ac2 */ STRH R0, [R7, 0x10] \n\
/* 08012ac4 */ LDR R0, [R4] \n\
/* 08012ac6 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 08012ac8 */ LDRSH R1, [R7, R2] \n\
/* 08012aca */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08012acc */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08012ace */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08012ad0 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08012ad2 */ BL func_0804db44 \n\
/* 08012ad6 */ BL func_0800c3b8 \n\
/* 08012ada */ LSLS R0, R0, 0x10 \n\
/* 08012adc */ LSRS R0, R0, 0x10 \n\
/* 08012ade */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08012ae0 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08012ae2 */ MOVS R3, 0x1A @ Set R3 to 0x1A \n\
/* 08012ae4 */ BL func_0800a204 \n\
/* 08012ae8 */ STR R0, [R7, 0xC] \n\
/* 08012aea */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08012aec */ LSLS R2, R2, 0x1 \n\
/* 08012aee */ MOVS R1, 0x68 @ Set R1 to 0x68 \n\
/* 08012af0 */ BL func_0800ac68 \n\
/* 08012af4 */ LDR R0, [R7, 0xC] \n\
/* 08012af6 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08012af8 */ BL func_0800aca0 \n\
/* 08012afc */ LDR R0, [R7, 0xC] \n\
/* 08012afe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012b00 */ BL func_0800acbc \n\
/* 08012b04 */ LDR R0, [R7, 0xC] \n\
/* 08012b06 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08012b08 */ BL func_0800acb0 \n\
/* 08012b0c */ LDR R0, [R7, 0xC] \n\
/* 08012b0e */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08012b10 */ BL func_0800ae00 \n\
/* 08012b14 */ LDR R0, [R7, 0xC] \n\
/* 08012b16 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08012b18 */ BL func_0800acd8 \n\
/* 08012b1c */ LDR R0, [R7, 0xC] \n\
/* 08012b1e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08012b20 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08012b22 */ BL func_0800ad98 \n\
/* 08012b26 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012b28 */ STRB R3, [R7] \n\
/* 08012b2a */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08012b2c */ STRB R0, [R7, 0x1] \n\
/* 08012b2e */ LDR R5, =D_030046a8 \n\
/* 08012b30 */ LDR R1, [R5] \n\
/* 08012b32 */ LDR R4, =0x276 \n\
/* 08012b34 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 08012b36 */ LDRB R0, [R0] \n\
/* 08012b38 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08012b3a */ BEQ branch_08012b7c \n\
/* 08012b3c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08012b3e */ BGT branch_08012b68 \n\
/* 08012b40 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012b42 */ BEQ branch_08012b6e \n\
/* 08012b44 */ B branch_08012c06 \n\
\n\
.ltorg \n\
 \n\
branch_08012b68: \n\
/* 08012b68 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08012b6a */ BEQ branch_08012b82 \n\
/* 08012b6c */ B branch_08012c06 \n\
 \n\
branch_08012b6e: \n\
/* 08012b6e */ BL func_08012928 \n\
/* 08012b72 */ LDR R0, [R5] \n\
/* 08012b74 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08012b76 */ LDRB R0, [R0] \n\
/* 08012b78 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08012b7a */ BNE branch_08012c06 \n\
 \n\
branch_08012b7c: \n\
/* 08012b7c */ BL func_080129e8 \n\
/* 08012b80 */ B branch_08012c06 \n\
 \n\
branch_08012b82: \n\
/* 08012b82 */ LDR R2, =0x277 \n\
/* 08012b84 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08012b86 */ LDRB R0, [R0] \n\
/* 08012b88 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012b8a */ BEQ branch_08012be8 \n\
/* 08012b8c */ LDR R3, =0x27a \n\
/* 08012b8e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08012b90 */ LDRB R0, [R0] \n\
/* 08012b92 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08012b94 */ BHI branch_08012be8 \n\
/* 08012b96 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08012b98 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08012b9a */ LDRB R2, [R0] \n\
/* 08012b9c */ SUBS R3, 0x34 @ Subtract 0x34 from R3 \n\
/* 08012b9e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08012ba0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08012ba2 */ LDRB R0, [R0] \n\
/* 08012ba4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012ba6 */ BNE branch_08012be8 \n\
/* 08012ba8 */ STRB R2, [R7, 0x1] \n\
/* 08012baa */ LDR R1, =D_089cdf24 \n\
/* 08012bac */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012bae */ LDRSB R0, [R7, R0] \n\
/* 08012bb0 */ LSLS R0, R0, 0x3 \n\
/* 08012bb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012bb4 */ LDRB R0, [R0] \n\
/* 08012bb6 */ LSLS R0, R0, 0x18 \n\
/* 08012bb8 */ ASRS R0, R0, 0x18 \n\
/* 08012bba */ STRH R0, [R7, 0x2] \n\
/* 08012bbc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012bbe */ LDRSB R0, [R7, R0] \n\
/* 08012bc0 */ LSLS R0, R0, 0x3 \n\
/* 08012bc2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012bc4 */ LDRB R0, [R0, 0x1] \n\
/* 08012bc6 */ LSLS R0, R0, 0x18 \n\
/* 08012bc8 */ ASRS R0, R0, 0x18 \n\
/* 08012bca */ STRH R0, [R7, 0x4] \n\
/* 08012bcc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08012bce */ LDRSH R0, [R7, R1] \n\
/* 08012bd0 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08012bd2 */ LDRSH R1, [R7, R2] \n\
/* 08012bd4 */ BL func_08012fcc \n\
/* 08012bd8 */ B branch_08012c06 \n\
\n\
.ltorg \n\
 \n\
branch_08012be8: \n\
/* 08012be8 */ LDR R5, =D_030046a8 \n\
/* 08012bea */ LDR R0, [R5] \n\
/* 08012bec */ LDR R4, =0x276 \n\
/* 08012bee */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08012bf0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08012bf2 */ STRB R1, [R0] \n\
/* 08012bf4 */ BL func_08012928 \n\
/* 08012bf8 */ LDR R0, [R5] \n\
/* 08012bfa */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08012bfc */ LDRB R0, [R0] \n\
/* 08012bfe */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08012c00 */ BNE branch_08012c06 \n\
/* 08012c02 */ BL func_080129e8 \n\
 \n\
branch_08012c06: \n\
/* 08012c06 */ BL func_08012850 \n\
/* 08012c0a */ ADD SP, 0x14 \n\
/* 08012c0c */ POP {R3-R5} \n\
/* 08012c0e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012c10 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08012c12 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08012c14 */ POP {R4-R7} \n\
/* 08012c16 */ POP {R0} \n\
/* 08012c18 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
