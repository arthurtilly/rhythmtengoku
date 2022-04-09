asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008b00 \n\
/* 08008b00 */ PUSH {R4-R7, LR} \n\
/* 08008b02 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08008b04 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08008b06 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08008b08 */ PUSH {R5-R7} \n\
/* 08008b0a */ SUB SP, 0x28 \n\
/* 08008b0c */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08008b0e */ LDR R0, [SP, 0x4C] \n\
/* 08008b10 */ LDR R1, [SP, 0x58] \n\
/* 08008b12 */ LDR R6, [SP, 0x5C] \n\
/* 08008b14 */ LDR R4, [SP, 0x64] \n\
/* 08008b16 */ LSLS R2, R2, 0x10 \n\
/* 08008b18 */ LSRS R5, R2, 0x10 \n\
/* 08008b1a */ LSLS R0, R0, 0x10 \n\
/* 08008b1c */ LSRS R0, R0, 0x10 \n\
/* 08008b1e */ LSLS R1, R1, 0x10 \n\
/* 08008b20 */ LSRS R7, R1, 0x10 \n\
/* 08008b22 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008b24 */ BEQ branch_08008b34 \n\
/* 08008b26 */ LDR R2, =gSineTable \n\
/* 08008b28 */ LSLS R1, R0, 0x10 \n\
/* 08008b2a */ LSLS R0, R1, 0x5 \n\
/* 08008b2c */ LSRS R0, R0, 0x14 \n\
/* 08008b2e */ B branch_08008b40 \n\
\n\
.ltorg \n\
 \n\
branch_08008b34: \n\
/* 08008b34 */ LDR R2, =D_08935fcc \n\
/* 08008b36 */ LSLS R1, R0, 0x10 \n\
/* 08008b38 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08008b3a */ LSLS R0, R0, 0x10 \n\
/* 08008b3c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08008b3e */ LSRS R0, R0, 0xF \n\
 \n\
branch_08008b40: \n\
/* 08008b40 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08008b42 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08008b44 */ LDRSH R2, [R0, R3] \n\
/* 08008b46 */ STR R2, [SP] \n\
/* 08008b48 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08008b4a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008b4c */ BEQ branch_08008b74 \n\
/* 08008b4e */ LDR R0, =gSineTable \n\
/* 08008b50 */ ASRS R1, R2, 0x10 \n\
/* 08008b52 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08008b54 */ LSLS R2, R2, 0x2 \n\
/* 08008b56 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08008b58 */ LDR R2, =0x7ff \n\
/* 08008b5a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08008b5c */ LSLS R1, R1, 0x1 \n\
/* 08008b5e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08008b60 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008b62 */ LDRSH R3, [R1, R0] \n\
/* 08008b64 */ STR R3, [SP, 0x4] \n\
/* 08008b66 */ B branch_08008b86 \n\
\n\
.ltorg \n\
 \n\
branch_08008b74: \n\
/* 08008b74 */ LDR R1, =D_089361cc \n\
/* 08008b76 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08008b78 */ LSLS R0, R0, 0x10 \n\
/* 08008b7a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08008b7c */ LSRS R0, R0, 0xF \n\
/* 08008b7e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08008b80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008b82 */ LDRSH R1, [R0, R2] \n\
/* 08008b84 */ STR R1, [SP, 0x4] \n\
 \n\
branch_08008b86: \n\
/* 08008b86 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008b88 */ BEQ branch_08008ba4 \n\
/* 08008b8a */ LDR R3, =gSineTable \n\
/* 08008b8c */ LSLS R2, R5, 0x10 \n\
/* 08008b8e */ ASRS R0, R2, 0x10 \n\
/* 08008b90 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08008b92 */ LDR R1, =0x7ff \n\
/* 08008b94 */ B branch_08008bae \n\
\n\
.ltorg \n\
 \n\
branch_08008ba4: \n\
/* 08008ba4 */ LDR R3, =D_08935fcc \n\
/* 08008ba6 */ LSLS R2, R5, 0x10 \n\
/* 08008ba8 */ ASRS R0, R2, 0x10 \n\
/* 08008baa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08008bac */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
 \n\
branch_08008bae: \n\
/* 08008bae */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08008bb0 */ LSLS R0, R0, 0x1 \n\
/* 08008bb2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08008bb4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08008bb6 */ LDRSH R3, [R0, R1] \n\
/* 08008bb8 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08008bba */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008bbc */ BEQ branch_08008be8 \n\
/* 08008bbe */ LDR R0, =gSineTable \n\
/* 08008bc0 */ ASRS R1, R2, 0x10 \n\
/* 08008bc2 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08008bc4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08008bc6 */ LSLS R2, R2, 0x2 \n\
/* 08008bc8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08008bca */ LDR R2, =0x7ff \n\
/* 08008bcc */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08008bce */ LSLS R1, R1, 0x1 \n\
/* 08008bd0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08008bd2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008bd4 */ LDRSH R3, [R1, R0] \n\
/* 08008bd6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008bd8 */ B branch_08008bfc \n\
\n\
.ltorg \n\
 \n\
branch_08008be8: \n\
/* 08008be8 */ LDR R0, =D_089361cc \n\
/* 08008bea */ ASRS R1, R2, 0x10 \n\
/* 08008bec */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08008bee */ MOVS R2, 0xFF @ Set R2 to 0xFF \n\
/* 08008bf0 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08008bf2 */ LSLS R1, R1, 0x1 \n\
/* 08008bf4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08008bf6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08008bf8 */ LDRSH R2, [R1, R3] \n\
/* 08008bfa */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08008bfc: \n\
/* 08008bfc */ MOVS R4, 0xA0 @ Set R4 to 0xA0 \n\
/* 08008bfe */ LSLS R4, R4, 0x8 \n\
/* 08008c00 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008c02 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08008c04 */ BL func_08007b80 \n\
/* 08008c08 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08008c0a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008c0c */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08008c0e */ BL func_08007b80 \n\
/* 08008c12 */ STR R0, [SP, 0x14] \n\
/* 08008c14 */ LSLS R0, R5, 0x4 \n\
/* 08008c16 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08008c18 */ LSLS R0, R0, 0x4 \n\
/* 08008c1a */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008c1c */ BL func_08007b80 \n\
/* 08008c20 */ STR R0, [SP, 0x8] \n\
/* 08008c22 */ NEGS R0, R5 @ Set R0 to -R5 \n\
/* 08008c24 */ LSLS R0, R0, 0x8 \n\
/* 08008c26 */ ASRS R7, R0, 0x1 \n\
/* 08008c28 */ LSLS R4, R5, 0x8 \n\
/* 08008c2a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008c2c */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008c2e */ BL func_08007b80 \n\
/* 08008c32 */ STR R0, [SP, 0xC] \n\
/* 08008c34 */ LDR R0, [SP, 0x54] \n\
/* 08008c36 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08008c38 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008c3a */ BL func_08007b80 \n\
/* 08008c3e */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
/* 08008c40 */ LDR R0, [SP, 0x50] \n\
/* 08008c42 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08008c44 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008c46 */ BL func_08007b80 \n\
/* 08008c4a */ ADD R10, R0 @ Add R0 to R10 \n\
/* 08008c4c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008c4e */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 08008c50 */ BL func_08007b80 \n\
/* 08008c54 */ STR R0, [SP, 0x10] \n\
/* 08008c56 */ LDR R1, [SP, 0x14] \n\
/* 08008c58 */ LDR R2, [SP] \n\
/* 08008c5a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08008c5c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08008c5e */ STR R0, [SP, 0x18] \n\
/* 08008c60 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08008c62 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08008c64 */ LSLS R0, R0, 0x8 \n\
/* 08008c66 */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 08008c68 */ STR R3, [SP, 0x1C] \n\
/* 08008c6a */ LDR R0, [SP, 0x48] \n\
/* 08008c6c */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08008c6e */ LSLS R1, R1, 0x8 \n\
/* 08008c70 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08008c72 */ STR R0, [SP, 0x20] \n\
/* 08008c74 */ LDR R0, [SP, 0x60] \n\
/* 08008c76 */ LSLS R0, R0, 0x4 \n\
/* 08008c78 */ STR R0, [SP, 0x24] \n\
/* 08008c7a */ MOVS R2, 0x9F @ Set R2 to 0x9F \n\
/* 08008c7c */ MOV R10, R2 @ Set R10 to R2 \n\
 \n\
branch_08008c7e: \n\
/* 08008c7e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08008c80 */ LDR R3, [SP] \n\
/* 08008c82 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08008c84 */ BEQ branch_08008c9c \n\
/* 08008c86 */ LDR R1, [SP, 0x4] \n\
/* 08008c88 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08008c8a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08008c8c */ ASRS R0, R0, 0x8 \n\
/* 08008c8e */ LDR R2, [SP, 0x18] \n\
/* 08008c90 */ SUBS R1, R0, R2 @ Set R1 to R0 - R2 \n\
/* 08008c92 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08008c94 */ BNE branch_08008c98 \n\
/* 08008c96 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_08008c98: \n\
/* 08008c98 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08008c9a */ BEQ branch_08008cb4 \n\
 \n\
branch_08008c9c: \n\
/* 08008c9c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08008c9e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08008ca0 */ STR R0, [R6, 0x8] \n\
/* 08008ca2 */ STR R0, [R6, 0xC] \n\
/* 08008ca4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008ca6 */ STRH R0, [R6, 0x6] \n\
/* 08008ca8 */ STRH R0, [R6, 0x4] \n\
/* 08008caa */ STRH R0, [R6, 0x2] \n\
/* 08008cac */ STRH R0, [R6] \n\
/* 08008cae */ B branch_08008d1e \n\
\n\
.ltorg \n\
 \n\
branch_08008cb4: \n\
/* 08008cb4 */ LDR R3, [SP, 0x14] \n\
/* 08008cb6 */ LSLS R0, R3, 0x10 \n\
/* 08008cb8 */ BL func_08007b80 \n\
/* 08008cbc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08008cbe */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 08008cc0 */ LDR R2, [SP] \n\
/* 08008cc2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008cc4 */ MULS R4, R2 @ Multiply R4 by R2 \n\
/* 08008cc6 */ ASRS R4, R4, 0x8 \n\
/* 08008cc8 */ LDR R3, [SP, 0x8] \n\
/* 08008cca */ ASRS R0, R3, 0x1 \n\
/* 08008ccc */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08008cce */ MULS R3, R4 @ Multiply R3 by R4 \n\
/* 08008cd0 */ LDR R0, [SP, 0x1C] \n\
/* 08008cd2 */ SUBS R3, R0, R3 @ Set R3 to R0 - R3 \n\
/* 08008cd4 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08008cd6 */ MULS R2, R7 @ Multiply R2 by R7 \n\
/* 08008cd8 */ ASRS R2, R2, 0x8 \n\
/* 08008cda */ LDR R1, [SP, 0x20] \n\
/* 08008cdc */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 08008cde */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08008ce0 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 08008ce2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08008ce4 */ MULS R1, R2 @ Multiply R1 by R2 \n\
/* 08008ce6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08008ce8 */ ASRS R0, R0, 0x8 \n\
/* 08008cea */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08008cec */ LSLS R1, R1, 0x8 \n\
/* 08008cee */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08008cf0 */ STR R0, [R6, 0x8] \n\
/* 08008cf2 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08008cf4 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 08008cf6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08008cf8 */ MULS R1, R2 @ Multiply R1 by R2 \n\
/* 08008cfa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08008cfc */ ASRS R0, R0, 0x8 \n\
/* 08008cfe */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08008d00 */ LSLS R2, R2, 0x8 \n\
/* 08008d02 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08008d04 */ STR R0, [R6, 0xC] \n\
/* 08008d06 */ LDR R3, [SP, 0x10] \n\
/* 08008d08 */ MULS R4, R3 @ Multiply R4 by R3 \n\
/* 08008d0a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08008d0c */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08008d0e */ ASRS R0, R0, 0x10 \n\
/* 08008d10 */ STRH R0, [R6] \n\
/* 08008d12 */ STRH R5, [R6, 0x2] \n\
/* 08008d14 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08008d16 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 08008d18 */ ASRS R0, R0, 0x10 \n\
/* 08008d1a */ STRH R0, [R6, 0x4] \n\
/* 08008d1c */ STRH R5, [R6, 0x6] \n\
 \n\
branch_08008d1e: \n\
/* 08008d1e */ LDR R0, [SP, 0xC] \n\
/* 08008d20 */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
/* 08008d22 */ LDR R1, [SP, 0x24] \n\
/* 08008d24 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 08008d26 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08008d28 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08008d2a */ ADD R10, R2 @ Add R2 to R10 \n\
/* 08008d2c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08008d2e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08008d30 */ BGE branch_08008c7e \n\
/* 08008d32 */ ADD SP, 0x28 \n\
/* 08008d34 */ POP {R3-R5} \n\
/* 08008d36 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008d38 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08008d3a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08008d3c */ POP {R4-R7} \n\
/* 08008d3e */ POP {R0} \n\
/* 08008d40 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
