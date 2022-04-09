asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015afc \n\
/* 08015afc */ PUSH {R4-R7, LR} \n\
/* 08015afe */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08015b00 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08015b02 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08015b04 */ PUSH {R5-R7} \n\
/* 08015b06 */ SUB SP, 0x18 \n\
/* 08015b08 */ STR R0, [SP, 0x14] \n\
/* 08015b0a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08015b0c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08015b0e */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08015b10 */ LDR R0, [SP, 0x38] \n\
/* 08015b12 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08015b14 */ LDR R1, [SP, 0x3C] \n\
/* 08015b16 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08015b18 */ CMP R4, 0x1F @ Compare R4 and 0x1F \n\
/* 08015b1a */ BHI branch_08015b5a \n\
/* 08015b1c */ CMP R5, 0x1F @ Compare R5 and 0x1F \n\
/* 08015b1e */ BHI branch_08015b5a \n\
/* 08015b20 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08015b22 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08015b24 */ BLS branch_08015b2c \n\
/* 08015b26 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08015b28 */ SUBS R2, R0, R4 @ Set R2 to R0 - R4 \n\
/* 08015b2a */ B branch_08015b2e \n\
 \n\
branch_08015b2c: \n\
/* 08015b2c */ MOV R2, R8 @ Set R2 to R8 \n\
 \n\
branch_08015b2e: \n\
/* 08015b2e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08015b30 */ ADDS R0, R5, R7 @ Set R0 to R5 + R7 \n\
/* 08015b32 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08015b34 */ BLS branch_08015b3c \n\
/* 08015b36 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08015b38 */ SUBS R1, R0, R5 @ Set R1 to R0 - R5 \n\
/* 08015b3a */ B branch_08015b3e \n\
 \n\
branch_08015b3c: \n\
/* 08015b3c */ MOV R1, R10 @ Set R1 to R10 \n\
 \n\
branch_08015b3e: \n\
/* 08015b3e */ STR R2, [SP] \n\
/* 08015b40 */ STR R1, [SP, 0x4] \n\
/* 08015b42 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015b44 */ STR R0, [SP, 0x8] \n\
/* 08015b46 */ LDR R1, [SP, 0x40] \n\
/* 08015b48 */ STR R1, [SP, 0xC] \n\
/* 08015b4a */ LDR R7, [SP, 0x44] \n\
/* 08015b4c */ STR R7, [SP, 0x10] \n\
/* 08015b4e */ LDR R0, [SP, 0x14] \n\
/* 08015b50 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015b52 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08015b54 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08015b56 */ BL func_08015a5c \n\
 \n\
branch_08015b5a: \n\
/* 08015b5a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015b5c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015b5e */ BNE branch_08015b62 \n\
/* 08015b60 */ B branch_08015cba \n\
 \n\
branch_08015b62: \n\
/* 08015b62 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08015b64 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015b66 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08015b68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015b6a */ BEQ branch_08015bc8 \n\
/* 08015b6c */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08015b6e */ ADDS R1, R4, R7 @ Set R1 to R4 + R7 \n\
/* 08015b70 */ CMP R1, 0x20 @ Compare R1 and 0x20 \n\
/* 08015b72 */ BLS branch_08015bc8 \n\
/* 08015b74 */ CMP R4, 0x3F @ Compare R4 and 0x3F \n\
/* 08015b76 */ BHI branch_08015bc8 \n\
/* 08015b78 */ CMP R5, 0x1F @ Compare R5 and 0x1F \n\
/* 08015b7a */ BHI branch_08015bc8 \n\
/* 08015b7c */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 08015b7e */ LDR R3, [SP, 0x40] \n\
/* 08015b80 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08015b82 */ CMP R7, 0x1F @ Compare R7 and 0x1F \n\
/* 08015b84 */ BHI branch_08015b94 \n\
/* 08015b86 */ MOVS R7, 0x20 @ Set R7 to 0x20 \n\
/* 08015b88 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015b8a */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08015b8c */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 08015b8e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08015b90 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08015b92 */ SUBS R3, R0, R4 @ Set R3 to R0 - R4 \n\
 \n\
branch_08015b94: \n\
/* 08015b94 */ CMP R1, 0x40 @ Compare R1 and 0x40 \n\
/* 08015b96 */ BLS branch_08015b9e \n\
/* 08015b98 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08015b9a */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08015b9c */ SUBS R2, R0, R1 @ Set R2 to R0 - R1 \n\
 \n\
branch_08015b9e: \n\
/* 08015b9e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015ba0 */ ADDS R0, R5, R1 @ Set R0 to R5 + R1 \n\
/* 08015ba2 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08015ba4 */ BLS branch_08015bac \n\
/* 08015ba6 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08015ba8 */ SUBS R1, R0, R5 @ Set R1 to R0 - R5 \n\
/* 08015baa */ B branch_08015bae \n\
 \n\
branch_08015bac: \n\
/* 08015bac */ MOV R1, R10 @ Set R1 to R10 \n\
 \n\
branch_08015bae: \n\
/* 08015bae */ STR R2, [SP] \n\
/* 08015bb0 */ STR R1, [SP, 0x4] \n\
/* 08015bb2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015bb4 */ STR R0, [SP, 0x8] \n\
/* 08015bb6 */ STR R3, [SP, 0xC] \n\
/* 08015bb8 */ LDR R1, [SP, 0x44] \n\
/* 08015bba */ STR R1, [SP, 0x10] \n\
/* 08015bbc */ LDR R0, [SP, 0x14] \n\
/* 08015bbe */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015bc0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08015bc2 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08015bc4 */ BL func_08015a5c \n\
 \n\
branch_08015bc8: \n\
/* 08015bc8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08015bca */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08015bcc */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 08015bce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015bd0 */ BEQ branch_08015c38 \n\
/* 08015bd2 */ CMP R4, 0x1F @ Compare R4 and 0x1F \n\
/* 08015bd4 */ BHI branch_08015c38 \n\
/* 08015bd6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08015bd8 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08015bda */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08015bdc */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08015bde */ BLS branch_08015c38 \n\
/* 08015be0 */ CMP R5, 0x3F @ Compare R5 and 0x3F \n\
/* 08015be2 */ BHI branch_08015c38 \n\
/* 08015be4 */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 08015be6 */ LDR R3, [SP, 0x40] \n\
/* 08015be8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08015bea */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 08015bec */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08015bee */ BLS branch_08015bf6 \n\
/* 08015bf0 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08015bf2 */ SUBS R2, R0, R4 @ Set R2 to R0 - R4 \n\
/* 08015bf4 */ B branch_08015bf8 \n\
 \n\
branch_08015bf6: \n\
/* 08015bf6 */ MOV R2, R8 @ Set R2 to R8 \n\
 \n\
branch_08015bf8: \n\
/* 08015bf8 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015bfa */ CMP R5, 0x1F @ Compare R5 and 0x1F \n\
/* 08015bfc */ BHI branch_08015c10 \n\
/* 08015bfe */ MOVS R6, 0x20 @ Set R6 to 0x20 \n\
/* 08015c00 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08015c02 */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08015c04 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 08015c06 */ SUBS R0, R6, R5 @ Set R0 to R6 - R5 \n\
/* 08015c08 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08015c0a */ MULS R7, R0 @ Multiply R7 by R0 \n\
/* 08015c0c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08015c0e */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
 \n\
branch_08015c10: \n\
/* 08015c10 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08015c12 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 08015c14 */ BLS branch_08015c1e \n\
/* 08015c16 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08015c18 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08015c1a */ MOV R7, R12 @ Set R7 to R12 \n\
/* 08015c1c */ SUBS R1, R0, R7 @ Set R1 to R0 - R7 \n\
 \n\
branch_08015c1e: \n\
/* 08015c1e */ STR R2, [SP] \n\
/* 08015c20 */ STR R1, [SP, 0x4] \n\
/* 08015c22 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015c24 */ STR R0, [SP, 0x8] \n\
/* 08015c26 */ STR R3, [SP, 0xC] \n\
/* 08015c28 */ LDR R1, [SP, 0x44] \n\
/* 08015c2a */ STR R1, [SP, 0x10] \n\
/* 08015c2c */ LDR R0, [SP, 0x14] \n\
/* 08015c2e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015c30 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08015c32 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08015c34 */ BL func_08015a5c \n\
 \n\
branch_08015c38: \n\
/* 08015c38 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08015c3a */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08015c3c */ BNE branch_08015cba \n\
/* 08015c3e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015c40 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 08015c42 */ CMP R1, 0x20 @ Compare R1 and 0x20 \n\
/* 08015c44 */ BLS branch_08015cba \n\
/* 08015c46 */ CMP R4, 0x3F @ Compare R4 and 0x3F \n\
/* 08015c48 */ BHI branch_08015cba \n\
/* 08015c4a */ ADDS R7, R5, 0x0 @ Set R7 to R5 + 0x0 \n\
/* 08015c4c */ ADD R7, R10 @ Add R10 to R7 \n\
/* 08015c4e */ MOV R12, R7 @ Set R12 to R7 \n\
/* 08015c50 */ CMP R7, 0x20 @ Compare R7 and 0x20 \n\
/* 08015c52 */ BLS branch_08015cba \n\
/* 08015c54 */ CMP R5, 0x3F @ Compare R5 and 0x3F \n\
/* 08015c56 */ BHI branch_08015cba \n\
/* 08015c58 */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 08015c5a */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 08015c5c */ LDR R3, [SP, 0x40] \n\
/* 08015c5e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08015c60 */ CMP R7, 0x1F @ Compare R7 and 0x1F \n\
/* 08015c62 */ BHI branch_08015c70 \n\
/* 08015c64 */ MOVS R7, 0x20 @ Set R7 to 0x20 \n\
/* 08015c66 */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08015c68 */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 08015c6a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08015c6c */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 08015c6e */ SUBS R3, R0, R4 @ Set R3 to R0 - R4 \n\
 \n\
branch_08015c70: \n\
/* 08015c70 */ CMP R1, 0x40 @ Compare R1 and 0x40 \n\
/* 08015c72 */ BLS branch_08015c7a \n\
/* 08015c74 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08015c76 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08015c78 */ SUBS R2, R0, R1 @ Set R2 to R0 - R1 \n\
 \n\
branch_08015c7a: \n\
/* 08015c7a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08015c7c */ CMP R6, 0x1F @ Compare R6 and 0x1F \n\
/* 08015c7e */ BHI branch_08015c92 \n\
/* 08015c80 */ MOVS R6, 0x20 @ Set R6 to 0x20 \n\
/* 08015c82 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08015c84 */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 08015c86 */ ADDS R1, R0, R5 @ Set R1 to R0 + R5 \n\
/* 08015c88 */ SUBS R0, R6, R5 @ Set R0 to R6 - R5 \n\
/* 08015c8a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08015c8c */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 08015c8e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015c90 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
 \n\
branch_08015c92: \n\
/* 08015c92 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08015c94 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 08015c96 */ BLS branch_08015ca0 \n\
/* 08015c98 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08015c9a */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08015c9c */ MOV R4, R12 @ Set R4 to R12 \n\
/* 08015c9e */ SUBS R1, R0, R4 @ Set R1 to R0 - R4 \n\
 \n\
branch_08015ca0: \n\
/* 08015ca0 */ STR R2, [SP] \n\
/* 08015ca2 */ STR R1, [SP, 0x4] \n\
/* 08015ca4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08015ca6 */ STR R0, [SP, 0x8] \n\
/* 08015ca8 */ STR R3, [SP, 0xC] \n\
/* 08015caa */ LDR R1, [SP, 0x44] \n\
/* 08015cac */ STR R1, [SP, 0x10] \n\
/* 08015cae */ LDR R0, [SP, 0x14] \n\
/* 08015cb0 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08015cb2 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08015cb4 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08015cb6 */ BL func_08015a5c \n\
 \n\
branch_08015cba: \n\
/* 08015cba */ ADD SP, 0x18 \n\
/* 08015cbc */ POP {R3-R5} \n\
/* 08015cbe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08015cc0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08015cc2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08015cc4 */ POP {R4-R7} \n\
/* 08015cc6 */ POP {R0} \n\
/* 08015cc8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
