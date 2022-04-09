asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002b10 \n\
/* 08002b10 */ PUSH {R4-R7, LR} \n\
/* 08002b12 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08002b14 */ PUSH {R7} \n\
/* 08002b16 */ SUB SP, 0x4 \n\
/* 08002b18 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002b1a */ LDRB R1, [R5] \n\
/* 08002b1c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002b1e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002b20 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b22 */ BNE branch_08002b26 \n\
/* 08002b24 */ B branch_08002da2 \n\
 \n\
branch_08002b26: \n\
/* 08002b26 */ LDR R0, [R5, 0x4] \n\
/* 08002b28 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08002b2a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b2c */ BNE branch_08002b30 \n\
/* 08002b2e */ B branch_08002da2 \n\
 \n\
branch_08002b30: \n\
/* 08002b30 */ LDRB R1, [R5] \n\
/* 08002b32 */ LSLS R0, R1, 0x1D \n\
/* 08002b34 */ LSRS R2, R0, 0x1E \n\
/* 08002b36 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08002b38 */ BEQ branch_08002baa \n\
/* 08002b3a */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08002b3c */ BGT branch_08002b44 \n\
/* 08002b3e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002b40 */ BEQ branch_08002b4c \n\
/* 08002b42 */ B branch_08002cec \n\
 \n\
branch_08002b44: \n\
/* 08002b44 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 08002b46 */ BNE branch_08002b4a \n\
/* 08002b48 */ B branch_08002c7a \n\
 \n\
branch_08002b4a: \n\
/* 08002b4a */ B branch_08002cec \n\
 \n\
branch_08002b4c: \n\
/* 08002b4c */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08002b4e */ LDR R0, [R5, 0x14] \n\
/* 08002b50 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 08002b52 */ BLE branch_08002b56 \n\
/* 08002b54 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_08002b56: \n\
/* 08002b56 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08002b58 */ LDR R6, [R5, 0xC] \n\
/* 08002b5a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08002b5c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08002b5e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08002b60 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b62 */ BEQ branch_08002b66 \n\
/* 08002b64 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
 \n\
branch_08002b66: \n\
/* 08002b66 */ LDR R1, [R5, 0x10] \n\
/* 08002b68 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002b6a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08002b6c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b6e */ BEQ branch_08002b72 \n\
/* 08002b70 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
 \n\
branch_08002b72: \n\
/* 08002b72 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002b74 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08002b76 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b78 */ BEQ branch_08002b7c \n\
/* 08002b7a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
 \n\
branch_08002b7c: \n\
/* 08002b7c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08002b7e */ LSLS R0, R0, 0x1 \n\
/* 08002b80 */ STR R0, [SP] \n\
/* 08002b82 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08002b84 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08002b86 */ BL func_0800186c \n\
/* 08002b8a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08002b8c */ SUBS R2, R2, R4 @ Set R2 to R2 - R4 \n\
/* 08002b8e */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08002b90 */ LDR R0, [R5, 0x14] \n\
/* 08002b92 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 08002b94 */ STR R0, [R5, 0x14] \n\
/* 08002b96 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002b98 */ BNE branch_08002b9c \n\
/* 08002b9a */ B branch_08002cec \n\
 \n\
branch_08002b9c: \n\
/* 08002b9c */ LDR R0, [R5, 0xC] \n\
/* 08002b9e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08002ba0 */ STR R0, [R5, 0xC] \n\
/* 08002ba2 */ LDR R0, [R5, 0x10] \n\
/* 08002ba4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08002ba6 */ STR R0, [R5, 0x10] \n\
/* 08002ba8 */ B branch_08002d9a \n\
 \n\
branch_08002baa: \n\
/* 08002baa */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08002bac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002bae */ LSLS R0, R0, 0x18 \n\
/* 08002bb0 */ LSRS R1, R0, 0x18 \n\
/* 08002bb2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002bb4 */ BEQ branch_08002bdc \n\
/* 08002bb6 */ LDR R0, =D_030053b0 \n\
/* 08002bb8 */ STRB R2, [R0] \n\
/* 08002bba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002bbc */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08002bbe */ ADDS R2, 0x18 @ Add 0x18 to R2 \n\
/* 08002bc0 */ LDR R3, =D_03005390 \n\
 \n\
branch_08002bc2: \n\
/* 08002bc2 */ LDMIA R2!, {R0} \n\
/* 08002bc4 */ STMIA R3!, {R0} \n\
/* 08002bc6 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08002bc8 */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08002bca */ BLS branch_08002bc2 \n\
/* 08002bcc */ BL func_08003ea4 \n\
/* 08002bd0 */ B branch_08002c10 \n\
\n\
.ltorg \n\
 \n\
branch_08002bdc: \n\
/* 08002bdc */ LDR R0, =D_030053b0 \n\
/* 08002bde */ STRB R1, [R0] \n\
/* 08002be0 */ LDR R3, [R5, 0xC] \n\
/* 08002be2 */ LDR R6, [R3] \n\
/* 08002be4 */ LDRB R0, [R3, 0xC] \n\
/* 08002be6 */ LDR R7, [R5, 0x10] \n\
/* 08002be8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002bea */ BEQ branch_08002bf8 \n\
/* 08002bec */ LDRH R1, [R3, 0xA] \n\
/* 08002bee */ LSLS R1, R1, 0x1 \n\
/* 08002bf0 */ ADDS R1, R7, R1 @ Set R1 to R7 + R1 \n\
/* 08002bf2 */ LDRH R0, [R6, 0x4] \n\
/* 08002bf4 */ LSLS R0, R0, 0x1 \n\
/* 08002bf6 */ SUBS R6, R1, R0 @ Set R6 to R1 - R0 \n\
 \n\
branch_08002bf8: \n\
/* 08002bf8 */ LDR R1, =D_03004af0 \n\
/* 08002bfa */ LDR R2, [R3, 0x4] \n\
/* 08002bfc */ LDRH R3, [R3, 0x8] \n\
/* 08002bfe */ LSLS R3, R3, 0x10 \n\
/* 08002c00 */ LDR R0, [R5, 0x4] \n\
/* 08002c02 */ LSRS R0, R0, 0x2 \n\
/* 08002c04 */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 08002c06 */ LDR R4, [R1] \n\
/* 08002c08 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08002c0a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08002c0c */ BL _call_via_r4 \n\
 \n\
branch_08002c10: \n\
/* 08002c10 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002c12 */ LDR R0, =D_030053b0 \n\
/* 08002c14 */ LDRB R1, [R0] \n\
/* 08002c16 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08002c18 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002c1a */ BEQ branch_08002c4c \n\
/* 08002c1c */ LDRB R0, [R5] \n\
/* 08002c1e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08002c20 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002c22 */ STRB R0, [R5] \n\
/* 08002c24 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08002c26 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08002c28 */ SUBS R2, R0, R4 @ Set R2 to R0 - R4 \n\
/* 08002c2a */ LDR R4, =D_03005390 \n\
/* 08002c2c */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08002c2e */ ADDS R3, 0x18 @ Add 0x18 to R3 \n\
 \n\
branch_08002c30: \n\
/* 08002c30 */ LDMIA R4!, {R0} \n\
/* 08002c32 */ STMIA R3!, {R0} \n\
/* 08002c34 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08002c36 */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08002c38 */ BLS branch_08002c30 \n\
/* 08002c3a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002c3c */ STRB R0, [R6] \n\
/* 08002c3e */ B branch_08002c5c \n\
\n\
.ltorg \n\
 \n\
branch_08002c4c: \n\
/* 08002c4c */ LDRB R0, [R5] \n\
/* 08002c4e */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08002c50 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08002c52 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08002c54 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002c56 */ STRB R0, [R5] \n\
/* 08002c58 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08002c5a */ SUBS R2, R0, R4 @ Set R2 to R0 - R4 \n\
 \n\
branch_08002c5c: \n\
/* 08002c5c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08002c5e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002c60 */ BGE branch_08002c66 \n\
/* 08002c62 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08002c64 */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_08002c66: \n\
/* 08002c66 */ LDRB R1, [R5] \n\
/* 08002c68 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08002c6a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002c6c */ LSLS R0, R0, 0x18 \n\
/* 08002c6e */ LSRS R0, R0, 0x18 \n\
/* 08002c70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002c72 */ BEQ branch_08002c76 \n\
/* 08002c74 */ B branch_08002da2 \n\
 \n\
branch_08002c76: \n\
/* 08002c76 */ STR R0, [R5, 0x14] \n\
/* 08002c78 */ B branch_08002cec \n\
 \n\
branch_08002c7a: \n\
/* 08002c7a */ LDRH R1, [R5] \n\
/* 08002c7c */ LDR R2, =0xfff0 \n\
/* 08002c7e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002c80 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002c82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002c84 */ BEQ branch_08002c94 \n\
/* 08002c86 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08002c88 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08002c8a */ BL func_080085e4 \n\
/* 08002c8e */ B branch_08002cbc \n\
\n\
.ltorg \n\
 \n\
branch_08002c94: \n\
/* 08002c94 */ LDR R3, [R5, 0xC] \n\
/* 08002c96 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08002c98 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002c9a */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08002c9c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002c9e */ STRH R0, [R5] \n\
/* 08002ca0 */ LDR R4, [R3] \n\
/* 08002ca2 */ LDRH R0, [R3, 0xA] \n\
/* 08002ca4 */ LSLS R0, R0, 0x1 \n\
/* 08002ca6 */ LDR R1, [R5, 0x10] \n\
/* 08002ca8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08002caa */ LDRH R0, [R4, 0x4] \n\
/* 08002cac */ LSLS R0, R0, 0x1 \n\
/* 08002cae */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08002cb0 */ LDR R2, [R5, 0x4] \n\
/* 08002cb2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002cb4 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08002cb6 */ ADDS R3, 0x38 @ Add 0x38 to R3 \n\
/* 08002cb8 */ BL func_08008594 \n\
 \n\
branch_08002cbc: \n\
/* 08002cbc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08002cbe */ LDR R1, [R5, 0x14] \n\
/* 08002cc0 */ LDR R0, [R5, 0x4] \n\
/* 08002cc2 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08002cc4 */ STR R1, [R5, 0x14] \n\
/* 08002cc6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002cc8 */ BGE branch_08002cce \n\
/* 08002cca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002ccc */ STR R0, [R5, 0x14] \n\
 \n\
branch_08002cce: \n\
/* 08002cce */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002cd0 */ BEQ branch_08002da2 \n\
/* 08002cd2 */ LDRH R1, [R5] \n\
/* 08002cd4 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08002cd6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002cd8 */ STRH R0, [R5] \n\
/* 08002cda */ LDRB R1, [R5] \n\
/* 08002cdc */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08002cde */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08002ce0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002ce2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08002ce4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08002ce6 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08002ce8 */ STRB R1, [R5] \n\
/* 08002cea */ B branch_08002da2 \n\
 \n\
branch_08002cec: \n\
/* 08002cec */ LDR R1, [R5, 0x8] \n\
/* 08002cee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002cf0 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08002cf2 */ STR R0, [R5, 0x8] \n\
/* 08002cf4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002cf6 */ LDR R0, [R1, 0xC] \n\
/* 08002cf8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002cfa */ BEQ branch_08002d8c \n\
/* 08002cfc */ LDR R1, [R4, 0x8] \n\
/* 08002cfe */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08002d00 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002d02 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08002d04 */ BNE branch_08002d18 \n\
/* 08002d06 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
 \n\
branch_08002d08: \n\
/* 08002d08 */ LDR R1, [R4] \n\
/* 08002d0a */ LDR R0, [R4, 0x4] \n\
/* 08002d0c */ BL _call_via_r1 \n\
/* 08002d10 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08002d12 */ LDR R0, [R4, 0x8] \n\
/* 08002d14 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08002d16 */ BEQ branch_08002d08 \n\
 \n\
branch_08002d18: \n\
/* 08002d18 */ LDR R1, [R4, 0x8] \n\
/* 08002d1a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002d1c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08002d1e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08002d20 */ BEQ branch_08002d40 \n\
/* 08002d22 */ LDRB R0, [R5] \n\
/* 08002d24 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08002d26 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08002d28 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08002d2a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002d2c */ STRB R0, [R5] \n\
/* 08002d2e */ LDR R0, [R4] \n\
/* 08002d30 */ STR R0, [R5, 0xC] \n\
/* 08002d32 */ LDR R0, [R4, 0x4] \n\
/* 08002d34 */ BL func_08002a54 \n\
/* 08002d38 */ STR R0, [R5, 0x10] \n\
/* 08002d3a */ LDR R0, [R4, 0x8] \n\
/* 08002d3c */ STR R0, [R5, 0x14] \n\
/* 08002d3e */ B branch_08002d9a \n\
 \n\
branch_08002d40: \n\
/* 08002d40 */ LDRB R1, [R5] \n\
/* 08002d42 */ MOVS R6, 0x7 @ Set R6 to 0x7 \n\
/* 08002d44 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 08002d46 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08002d48 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002d4a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08002d4c */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002d4e */ STRB R0, [R5] \n\
/* 08002d50 */ LDR R0, [R4] \n\
/* 08002d52 */ BL func_0800869c \n\
/* 08002d56 */ STR R0, [R5, 0xC] \n\
/* 08002d58 */ LDR R0, [R4, 0x4] \n\
/* 08002d5a */ BL func_08002a54 \n\
/* 08002d5e */ STR R0, [R5, 0x10] \n\
/* 08002d60 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08002d62 */ STR R0, [R5, 0x14] \n\
/* 08002d64 */ LDRB R1, [R5] \n\
/* 08002d66 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08002d68 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08002d6a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002d6c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08002d6e */ STRB R1, [R5] \n\
/* 08002d70 */ LDR R3, [R5, 0xC] \n\
/* 08002d72 */ LDRB R0, [R3, 0xC] \n\
/* 08002d74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002d76 */ BEQ branch_08002d9a \n\
/* 08002d78 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08002d7a */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 08002d7c */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08002d7e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08002d80 */ STRB R0, [R5] \n\
/* 08002d82 */ LDRH R1, [R5] \n\
/* 08002d84 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08002d86 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002d88 */ STRH R0, [R5] \n\
/* 08002d8a */ B branch_08002d9a \n\
 \n\
branch_08002d8c: \n\
/* 08002d8c */ LDRB R0, [R5] \n\
/* 08002d8e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08002d90 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08002d92 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08002d94 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08002d96 */ STRB R0, [R5] \n\
/* 08002d98 */ B branch_08002da2 \n\
 \n\
branch_08002d9a: \n\
/* 08002d9a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08002d9c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002d9e */ BEQ branch_08002da2 \n\
/* 08002da0 */ B branch_08002b30 \n\
 \n\
branch_08002da2: \n\
/* 08002da2 */ ADD SP, 0x4 \n\
/* 08002da4 */ POP {R3} \n\
/* 08002da6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08002da8 */ POP {R4-R7} \n\
/* 08002daa */ POP {R0} \n\
/* 08002dac */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
