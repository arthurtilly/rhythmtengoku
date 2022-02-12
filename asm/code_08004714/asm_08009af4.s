asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08009af4 \n\
/* 08009af4 */ PUSH {R4-R7, LR} \n\
/* 08009af6 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08009af8 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08009afa */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08009afc */ PUSH {R5-R7} \n\
/* 08009afe */ SUB SP, 0x20 \n\
/* 08009b00 */ STR R0, [SP, 0x8] \n\
/* 08009b02 */ STR R1, [SP, 0xC] \n\
/* 08009b04 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08009b06 */ STR R3, [SP, 0x10] \n\
/* 08009b08 */ LDR R0, [SP, 0x48] \n\
/* 08009b0a */ LDR R1, [SP, 0x4C] \n\
/* 08009b0c */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08009b0e */ LDR R3, [R3] \n\
/* 08009b10 */ STR R3, [SP, 0x4] \n\
/* 08009b12 */ LDR R2, =D_089380ac \n\
/* 08009b14 */ MOV R4, R9 @ Set R4 to R9 \n\
/* 08009b16 */ LSLS R1, R4, 0x1 \n\
/* 08009b18 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08009b1a */ LSLS R1, R1, 0x2 \n\
/* 08009b1c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08009b1e */ LDRB R1, [R1, 0x9] \n\
/* 08009b20 */ STR R1, [SP, 0x14] \n\
/* 08009b22 */ LDR R1, =D_03001218 \n\
/* 08009b24 */ LDR R5, [R1] \n\
/* 08009b26 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009b28 */ STR R1, [SP, 0x18] \n\
/* 08009b2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08009b2c */ STR R2, [SP, 0x1C] \n\
/* 08009b2e */ STR R3, [R5] \n\
/* 08009b30 */ LDR R2, [SP, 0x40] \n\
/* 08009b32 */ BL func_080087d4 \n\
/* 08009b36 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08009b38 */ B branch_08009c88 \n\
\n\
.ltorg \n\
 \n\
branch_08009b44: \n\
/* 08009b44 */ LDRB R0, [R6] \n\
/* 08009b46 */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 08009b48 */ BHI branch_08009c30 \n\
/* 08009b4a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08009b4c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08009b4e */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 08009b50 */ BHI branch_08009c2a \n\
/* 08009b52 */ LSLS R0, R0, 0x2 \n\
/* 08009b54 */ LDR R1, =jtbl_08009b60 \n\
/* 08009b56 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009b58 */ LDR R0, [R0] \n\
/* 08009b5a */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08009b60: \n\
.word jump_08009b90 \n\
.word jump_08009bac \n\
.word jump_08009bb6 \n\
.word jump_08009bd8 \n\
.word jump_08009c14 \n\
.word branch_08009c2a \n\
.word branch_08009c2a \n\
.word branch_08009c2a \n\
.word branch_08009c2a \n\
.word jump_08009b88 \n\
\n\
jump_08009b88: \n\
/* 08009b88 */ LDR R0, [SP, 0x4] \n\
/* 08009b8a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08009b8c */ STR R0, [SP, 0x4] \n\
/* 08009b8e */ B branch_08009c92 \n\
\n\
jump_08009b90: \n\
/* 08009b90 */ LDR R0, =D_0300121c \n\
/* 08009b92 */ LDR R2, [R0] \n\
/* 08009b94 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08009b96 */ BEQ branch_08009ba2 \n\
/* 08009b98 */ LDR R0, [SP, 0x4] \n\
/* 08009b9a */ LDRB R0, [R0, 0x1] \n\
/* 08009b9c */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08009b9e */ BL _call_via_r2 \n\
 \n\
branch_08009ba2: \n\
/* 08009ba2 */ LDR R0, [SP, 0x4] \n\
/* 08009ba4 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08009ba6 */ B branch_08009c28 \n\
\n\
.ltorg \n\
\n\
jump_08009bac: \n\
/* 08009bac */ LDR R1, [SP, 0x4] \n\
/* 08009bae */ LDRB R0, [R1, 0x1] \n\
/* 08009bb0 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08009bb2 */ STR R0, [SP, 0x44] \n\
/* 08009bb4 */ B branch_08009bcc \n\
\n\
jump_08009bb6: \n\
/* 08009bb6 */ LDR R1, [SP, 0x4] \n\
/* 08009bb8 */ LDRB R0, [R1, 0x1] \n\
/* 08009bba */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08009bbc */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08009bbe */ LDR R2, =D_089380ac \n\
/* 08009bc0 */ LSLS R0, R0, 0x1 \n\
/* 08009bc2 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 08009bc4 */ LSLS R0, R0, 0x2 \n\
/* 08009bc6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08009bc8 */ LDRB R0, [R0, 0x9] \n\
/* 08009bca */ STR R0, [SP, 0x14] \n\
 \n\
branch_08009bcc: \n\
/* 08009bcc */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08009bce */ STR R1, [SP, 0x4] \n\
/* 08009bd0 */ B branch_08009c2a \n\
\n\
.ltorg \n\
\n\
jump_08009bd8: \n\
/* 08009bd8 */ LDR R1, [SP, 0x4] \n\
/* 08009bda */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 08009bdc */ STR R0, [SP, 0x4] \n\
/* 08009bde */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08009be0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08009be2 */ LDRB R0, [R1, 0x1] \n\
/* 08009be4 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08009be6 */ BEQ branch_08009c02 \n\
 \n\
branch_08009be8: \n\
/* 08009be8 */ LSLS R0, R7, 0x2 \n\
/* 08009bea */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08009bec */ LSLS R0, R0, 0x1 \n\
/* 08009bee */ LDRB R3, [R2] \n\
/* 08009bf0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08009bf2 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08009bf4 */ SUBS R7, 0x30 @ Subtract 0x30 from R7 \n\
/* 08009bf6 */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 08009bf8 */ STR R0, [SP, 0x4] \n\
/* 08009bfa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08009bfc */ LDRB R0, [R2] \n\
/* 08009bfe */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08009c00 */ BNE branch_08009be8 \n\
 \n\
branch_08009c02: \n\
/* 08009c02 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08009c04 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009c06 */ LDR R2, [SP, 0x40] \n\
/* 08009c08 */ BL func_080087d4 \n\
/* 08009c0c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08009c0e */ LDR R0, [SP, 0x4] \n\
/* 08009c10 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08009c12 */ B branch_08009c28 \n\
\n\
jump_08009c14: \n\
/* 08009c14 */ LDR R1, [SP, 0x4] \n\
/* 08009c16 */ LDRB R0, [R1, 0x1] \n\
/* 08009c18 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08009c1a */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08009c1c */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08009c1e */ BLE branch_08009c26 \n\
/* 08009c20 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009c22 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08009c24 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08009c26: \n\
/* 08009c26 */ ADDS R0, R1, 0x2 @ Set R0 to R1 + 0x2 \n\
 \n\
branch_08009c28: \n\
/* 08009c28 */ STR R0, [SP, 0x4] \n\
 \n\
branch_08009c2a: \n\
/* 08009c2a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009c2c */ BEQ branch_08009c88 \n\
/* 08009c2e */ B branch_08009c92 \n\
 \n\
branch_08009c30: \n\
/* 08009c30 */ MOV R8, R6 @ Set R8 to R6 \n\
/* 08009c32 */ ADD R0, SP, 0x4 \n\
/* 08009c34 */ BL func_0800a108 \n\
/* 08009c38 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08009c3a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009c3c */ BLT branch_08009c88 \n\
/* 08009c3e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08009c40 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08009c42 */ BL func_08009898 \n\
/* 08009c46 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08009c48 */ LDR R1, [SP, 0x40] \n\
/* 08009c4a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08009c4c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009c4e */ BLT branch_08009c52 \n\
/* 08009c50 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
 \n\
branch_08009c52: \n\
/* 08009c52 */ ADDS R0, R7, R2 @ Set R0 to R7 + R2 \n\
/* 08009c54 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08009c56 */ BGT branch_08009cd4 \n\
/* 08009c58 */ STRH R4, [R5, 0x8] \n\
/* 08009c5a */ STRH R7, [R5, 0xA] \n\
/* 08009c5c */ STRB R2, [R5, 0xC] \n\
/* 08009c5e */ ADD R4, SP, 0x44 \n\
/* 08009c60 */ LDRB R4, [R4] \n\
/* 08009c62 */ STRB R4, [R5, 0xD] \n\
/* 08009c64 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08009c66 */ STRB R0, [R5, 0xE] \n\
/* 08009c68 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08009c6a */ STR R1, [R5, 0x4] \n\
/* 08009c6c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08009c6e */ STRB R3, [R5, 0xF] \n\
/* 08009c70 */ MOV R4, SP @ Set R4 to SP \n\
/* 08009c72 */ LDRB R4, [R4, 0x14] \n\
/* 08009c74 */ STRB R4, [R5, 0x10] \n\
/* 08009c76 */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 08009c78 */ LDR R0, [SP, 0x18] \n\
/* 08009c7a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08009c7c */ STR R0, [SP, 0x18] \n\
/* 08009c7e */ LDR R0, [SP, 0x4] \n\
/* 08009c80 */ STR R0, [R5] \n\
/* 08009c82 */ LDR R1, [SP, 0x14] \n\
/* 08009c84 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08009c86 */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
 \n\
branch_08009c88: \n\
/* 08009c88 */ LDR R6, [SP, 0x4] \n\
/* 08009c8a */ LDRB R0, [R6] \n\
/* 08009c8c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009c8e */ BEQ branch_08009c92 \n\
/* 08009c90 */ B branch_08009b44 \n\
 \n\
branch_08009c92: \n\
/* 08009c92 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08009c94 */ BEQ branch_08009c9a \n\
/* 08009c96 */ LDR R2, [SP, 0x14] \n\
/* 08009c98 */ SUBS R7, R7, R2 @ Set R7 to R7 - R2 \n\
 \n\
branch_08009c9a: \n\
/* 08009c9a */ LDR R3, [SP, 0x1C] \n\
/* 08009c9c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009c9e */ BEQ branch_08009d7a \n\
/* 08009ca0 */ LDR R4, [SP, 0x18] \n\
/* 08009ca2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009ca4 */ BEQ branch_08009d7a \n\
/* 08009ca6 */ LDR R0, =D_03001218 \n\
/* 08009ca8 */ LDR R1, [R0] \n\
/* 08009caa */ LSLS R0, R4, 0x2 \n\
/* 08009cac */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08009cae */ LSLS R0, R0, 0x2 \n\
/* 08009cb0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009cb2 */ SUBS R0, 0x14 @ Subtract 0x14 from R0 \n\
/* 08009cb4 */ LDR R0, [R0, 0x4] \n\
/* 08009cb6 */ BL func_08009a54 \n\
/* 08009cba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009cbc */ BEQ branch_08009cdc \n\
/* 08009cbe */ SUBS R5, 0x14 @ Subtract 0x14 from R5 \n\
/* 08009cc0 */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 08009cc2 */ STR R4, [SP, 0x18] \n\
/* 08009cc4 */ LDRB R0, [R5, 0xC] \n\
/* 08009cc6 */ LDRB R1, [R5, 0x10] \n\
/* 08009cc8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009cca */ SUBS R7, R7, R0 @ Set R7 to R7 - R0 \n\
/* 08009ccc */ B branch_08009d06 \n\
\n\
.ltorg \n\
 \n\
branch_08009cd4: \n\
/* 08009cd4 */ STR R6, [SP, 0x4] \n\
/* 08009cd6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009cd8 */ STR R0, [SP, 0x1C] \n\
/* 08009cda */ B branch_08009c92 \n\
 \n\
branch_08009cdc: \n\
/* 08009cdc */ LDR R0, [SP, 0x4] \n\
/* 08009cde */ BL func_08009aa4 \n\
/* 08009ce2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009ce4 */ BEQ branch_08009d0a \n\
 \n\
branch_08009ce6: \n\
/* 08009ce6 */ SUBS R5, 0x14 @ Subtract 0x14 from R5 \n\
/* 08009ce8 */ LDR R1, [SP, 0x18] \n\
/* 08009cea */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 08009cec */ STR R1, [SP, 0x18] \n\
/* 08009cee */ LDRB R0, [R5, 0xC] \n\
/* 08009cf0 */ LDRB R1, [R5, 0x10] \n\
/* 08009cf2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009cf4 */ SUBS R7, R7, R0 @ Set R7 to R7 - R0 \n\
/* 08009cf6 */ LDR R2, [SP, 0x18] \n\
/* 08009cf8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08009cfa */ BEQ branch_08009d06 \n\
/* 08009cfc */ LDR R0, [R5, 0x4] \n\
/* 08009cfe */ BL func_08009aa4 \n\
/* 08009d02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009d04 */ BNE branch_08009ce6 \n\
 \n\
branch_08009d06: \n\
/* 08009d06 */ LDR R0, [R5] \n\
/* 08009d08 */ STR R0, [SP, 0x4] \n\
 \n\
branch_08009d0a: \n\
/* 08009d0a */ LDR R3, [SP, 0x18] \n\
/* 08009d0c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009d0e */ BEQ branch_08009d7a \n\
/* 08009d10 */ LDR R1, =D_03001218 \n\
/* 08009d12 */ LSLS R0, R3, 0x2 \n\
/* 08009d14 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08009d16 */ LSLS R0, R0, 0x2 \n\
/* 08009d18 */ LDR R1, [R1] \n\
/* 08009d1a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08009d1c */ SUBS R0, 0x14 @ Subtract 0x14 from R0 \n\
/* 08009d1e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08009d20 */ LDRH R5, [R1, 0xA] \n\
/* 08009d22 */ LDRB R0, [R0, 0xC] \n\
/* 08009d24 */ LDR R4, [SP, 0x40] \n\
/* 08009d26 */ SUBS R0, R4, R0 @ Set R0 to R4 - R0 \n\
/* 08009d28 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08009d2a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009d2c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08009d2e */ BL func_080087d4 \n\
/* 08009d32 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08009d34 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08009d36 */ LDRH R0, [R1, 0xA] \n\
/* 08009d38 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08009d3a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009d3c */ LDR R2, [SP, 0x40] \n\
/* 08009d3e */ BL func_080087d4 \n\
/* 08009d42 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08009d44 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08009d46 */ LDR R2, [SP, 0x18] \n\
/* 08009d48 */ CMP R6, R2 @ Check R6 - R2 \n\
/* 08009d4a */ BCS branch_08009d72 \n\
/* 08009d4c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08009d4e: \n\
/* 08009d4e */ LDR R0, =D_03001218 \n\
/* 08009d50 */ LDR R4, [R0] \n\
/* 08009d52 */ ADDS R4, R7, R4 @ Set R4 to R7 + R4 \n\
/* 08009d54 */ LDRH R0, [R4, 0xA] \n\
/* 08009d56 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08009d58 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08009d5a */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 08009d5c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08009d5e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08009d60 */ BL __divsi3 \n\
/* 08009d64 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 08009d66 */ STRH R0, [R4, 0xA] \n\
/* 08009d68 */ ADDS R7, 0x14 @ Add 0x14 to R7 \n\
/* 08009d6a */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08009d6c */ LDR R4, [SP, 0x18] \n\
/* 08009d6e */ CMP R6, R4 @ Check R6 - R4 \n\
/* 08009d70 */ BCC branch_08009d4e \n\
 \n\
branch_08009d72: \n\
/* 08009d72 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08009d74 */ LDRB R0, [R1, 0xC] \n\
/* 08009d76 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08009d78 */ ADDS R7, R2, R0 @ Set R7 to R2 + R0 \n\
 \n\
branch_08009d7a: \n\
/* 08009d7a */ LDR R0, =D_03001218 \n\
/* 08009d7c */ LDR R5, [R0] \n\
/* 08009d7e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08009d80 */ LDR R3, [SP, 0x18] \n\
/* 08009d82 */ CMP R6, R3 @ Check R6 - R3 \n\
/* 08009d84 */ BCS branch_08009dc6 \n\
 \n\
branch_08009d86: \n\
/* 08009d86 */ LDRH R0, [R5, 0xA] \n\
/* 08009d88 */ LDR R4, [SP, 0x8] \n\
/* 08009d8a */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08009d8c */ LDRB R2, [R5, 0xF] \n\
/* 08009d8e */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08009d90 */ LDRSH R3, [R5, R1] \n\
/* 08009d92 */ LDRB R1, [R5, 0xD] \n\
/* 08009d94 */ STR R1, [SP] \n\
/* 08009d96 */ LDR R1, [SP, 0xC] \n\
/* 08009d98 */ BL func_08009948 \n\
/* 08009d9c */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08009d9e */ LDRSB R0, [R5, R0] \n\
/* 08009da0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009da2 */ BLT branch_08009dbc \n\
/* 08009da4 */ LDRH R0, [R5, 0xA] \n\
/* 08009da6 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08009da8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08009daa */ LDRB R2, [R5, 0xF] \n\
/* 08009dac */ MOVS R4, 0x8 @ Set R4 to 0x8 \n\
/* 08009dae */ LDRSH R3, [R5, R4] \n\
/* 08009db0 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 08009db2 */ LDRSB R1, [R5, R1] \n\
/* 08009db4 */ STR R1, [SP] \n\
/* 08009db6 */ LDR R1, [SP, 0xC] \n\
/* 08009db8 */ BL func_08009948 \n\
 \n\
branch_08009dbc: \n\
/* 08009dbc */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08009dbe */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 08009dc0 */ LDR R0, [SP, 0x18] \n\
/* 08009dc2 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08009dc4 */ BCC branch_08009d86 \n\
 \n\
branch_08009dc6: \n\
/* 08009dc6 */ LDR R0, [SP, 0x4] \n\
/* 08009dc8 */ LDR R1, [SP, 0x10] \n\
/* 08009dca */ STR R0, [R1] \n\
/* 08009dcc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08009dce */ ADD SP, 0x20 \n\
/* 08009dd0 */ POP {R3-R5} \n\
/* 08009dd2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08009dd4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08009dd6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08009dd8 */ POP {R4-R7} \n\
/* 08009dda */ POP {R1} \n\
/* 08009ddc */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
