asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049c34 \n\
/* 08049c34 */ PUSH {R4-R7, LR} \n\
/* 08049c36 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08049c38 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08049c3a */ LSLS R1, R7, 0x5 \n\
/* 08049c3c */ LDR R0, [R6, 0x18] \n\
/* 08049c3e */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08049c40 */ LDRB R0, [R4, 0x15] \n\
/* 08049c42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049c44 */ BEQ branch_08049c50 \n\
/* 08049c46 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08049c48 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049c4a */ STRB R0, [R4, 0x15] \n\
/* 08049c4c */ STRH R1, [R4, 0x12] \n\
/* 08049c4e */ B branch_08049c58 \n\
 \n\
branch_08049c50: \n\
/* 08049c50 */ LDRH R0, [R4, 0x10] \n\
/* 08049c52 */ LDRH R1, [R4, 0x12] \n\
/* 08049c54 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08049c56 */ STRH R0, [R4, 0x12] \n\
 \n\
branch_08049c58: \n\
/* 08049c58 */ LDR R1, [R4, 0x4] \n\
/* 08049c5a */ LSLS R1, R1, 0xB \n\
/* 08049c5c */ LSRS R1, R1, 0x19 \n\
/* 08049c5e */ LDR R2, =D_08a86140 \n\
/* 08049c60 */ LDRH R0, [R4, 0x12] \n\
/* 08049c62 */ LSRS R0, R0, 0x8 \n\
/* 08049c64 */ LSLS R0, R0, 0x1 \n\
/* 08049c66 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08049c68 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049c6a */ LDRSH R0, [R0, R2] \n\
/* 08049c6c */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08049c6e */ ASRS R0, R0, 0x8 \n\
/* 08049c70 */ STRB R0, [R4, 0xD] \n\
/* 08049c72 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08049c74 */ LDRB R1, [R4, 0x7] \n\
/* 08049c76 */ LSLS R0, R1, 0x1A \n\
/* 08049c78 */ LSRS R0, R0, 0x1E \n\
/* 08049c7a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08049c7c */ BNE branch_08049c92 \n\
/* 08049c7e */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 08049c80 */ LDRSB R0, [R4, R0] \n\
/* 08049c82 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08049c84 */ ADDS R5, 0x80 @ Add 0x80 to R5 \n\
/* 08049c86 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08049c88 */ BGE branch_08049c8c \n\
/* 08049c8a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_08049c8c: \n\
/* 08049c8c */ CMP R5, 0xA0 @ Compare R5 and 0xA0 \n\
/* 08049c8e */ BLE branch_08049c92 \n\
/* 08049c90 */ MOVS R5, 0xA0 @ Set R5 to 0xA0 \n\
 \n\
branch_08049c92: \n\
/* 08049c92 */ LSLS R0, R1, 0x1A \n\
/* 08049c94 */ LSRS R0, R0, 0x1E \n\
/* 08049c96 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08049c98 */ BNE branch_08049ca2 \n\
/* 08049c9a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08049c9c */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08049c9e */ BL func_0804aae0 \n\
 \n\
branch_08049ca2: \n\
/* 08049ca2 */ LDRH R0, [R6, 0x2] \n\
/* 08049ca4 */ ASRS R0, R7 @ Set R0 to R0 << R7 (arithmetic) \n\
/* 08049ca6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08049ca8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049caa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049cac */ BEQ branch_08049cb8 \n\
/* 08049cae */ LDRB R1, [R6, 0x1] \n\
/* 08049cb0 */ B branch_08049cba \n\
\n\
.ltorg \n\
 \n\
branch_08049cb8: \n\
/* 08049cb8 */ LDRB R1, [R6] \n\
 \n\
branch_08049cba: \n\
/* 08049cba */ LDRH R0, [R4, 0x2] \n\
/* 08049cbc */ LSLS R0, R0, 0x12 \n\
/* 08049cbe */ LSRS R0, R0, 0x19 \n\
/* 08049cc0 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08049cc2 */ LDRH R0, [R4, 0x4] \n\
/* 08049cc4 */ LSLS R0, R0, 0x12 \n\
/* 08049cc6 */ LSRS R0, R0, 0x19 \n\
/* 08049cc8 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08049cca */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08049ccc */ LSRS R1, R0, 0x15 \n\
/* 08049cce */ CMP R1, 0xFF @ Compare R1 and 0xFF \n\
/* 08049cd0 */ BLS branch_08049cd4 \n\
/* 08049cd2 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
 \n\
branch_08049cd4: \n\
/* 08049cd4 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08049cd6 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08049cd8 */ LSLS R2, R1, 0xE \n\
/* 08049cda */ LDR R0, [R4, 0x8] \n\
/* 08049cdc */ LDR R1, =0xffc03fff \n\
/* 08049cde */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049ce0 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08049ce2 */ STR R0, [R4, 0x8] \n\
/* 08049ce4 */ LDRB R0, [R4, 0x1C] \n\
/* 08049ce6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049ce8 */ BEQ branch_08049cfe \n\
/* 08049cea */ LDRB R1, [R4, 0x1D] \n\
/* 08049cec */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08049cee */ BEQ branch_08049cfe \n\
/* 08049cf0 */ LDRB R0, [R4, 0x1E] \n\
/* 08049cf2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049cf4 */ BNE branch_08049cf8 \n\
/* 08049cf6 */ STRB R1, [R4, 0x1E] \n\
 \n\
branch_08049cf8: \n\
/* 08049cf8 */ LDRB R0, [R4, 0x1E] \n\
/* 08049cfa */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08049cfc */ STRB R0, [R4, 0x1E] \n\
 \n\
branch_08049cfe: \n\
/* 08049cfe */ POP {R4-R7} \n\
/* 08049d00 */ POP {R0} \n\
/* 08049d02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
