asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019bec \n\
/* 08019bec */ PUSH {R4-R7, LR} \n\
/* 08019bee */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08019bf0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08019bf2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08019bf4 */ PUSH {R5-R7} \n\
/* 08019bf6 */ SUB SP, 0x20 \n\
/* 08019bf8 */ LDR R0, =D_089d7980 \n\
/* 08019bfa */ LDR R0, [R0] \n\
/* 08019bfc */ LDR R1, [R0, 0x78] \n\
/* 08019bfe */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08019c00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019c02 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08019c04 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019c06 */ STR R3, [SP, 0x14] \n\
/* 08019c08 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08019c0a */ ADDS R7, 0x7C @ Add 0x7C to R7 \n\
/* 08019c0c */ LDR R0, =D_030046a4 \n\
/* 08019c0e */ LDR R1, [R0] \n\
/* 08019c10 */ LDRB R0, [R1, 0x12] \n\
/* 08019c12 */ LSLS R0, R0, 0x1 \n\
/* 08019c14 */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 08019c16 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08019c18 */ STR R1, [SP, 0x18] \n\
/* 08019c1a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019c1c */ STR R0, [SP, 0x1C] \n\
/* 08019c1e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08019c20 */ LSLS R0, R0, 0x1 \n\
/* 08019c22 */ BL mem_heap_alloc \n\
/* 08019c26 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08019c28 */ B branch_08019d30 \n\
\n\
.ltorg \n\
 \n\
branch_08019c34: \n\
/* 08019c34 */ LDRH R0, [R7] \n\
/* 08019c36 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019c38 */ BEQ branch_08019d2a \n\
/* 08019c3a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08019c3c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08019c3e */ LDR R4, [R3] \n\
/* 08019c40 */ LDRH R0, [R7, 0xA] \n\
/* 08019c42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019c44 */ BEQ branch_08019c4c \n\
/* 08019c46 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019c48 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08019c4a */ STR R0, [SP, 0x1C] \n\
 \n\
branch_08019c4c: \n\
/* 08019c4c */ LDRH R1, [R4, 0xA] \n\
/* 08019c4e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019c50 */ BEQ branch_08019d2a \n\
/* 08019c52 */ LDR R3, [SP, 0x14] \n\
/* 08019c54 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08019c56 */ STR R3, [SP, 0x14] \n\
/* 08019c58 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08019c5a */ BEQ branch_08019d2a \n\
/* 08019c5c */ LDRH R0, [R7, 0xC] \n\
/* 08019c5e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08019c60 */ BCS branch_08019c64 \n\
/* 08019c62 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08019c64: \n\
/* 08019c64 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08019c66 */ BEQ branch_08019d2a \n\
/* 08019c68 */ LDR R0, =D_030046a4 \n\
/* 08019c6a */ LDR R0, [R0] \n\
/* 08019c6c */ LDRB R0, [R0, 0x12] \n\
/* 08019c6e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019c70 */ BEQ branch_08019c9c \n\
/* 08019c72 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019c74 */ LDR R1, =D_08054f18 \n\
/* 08019c76 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08019c78 */ BL memcpy \n\
/* 08019c7c */ LDR R1, [R4] \n\
/* 08019c7e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019c80 */ BL func_080081a8 \n\
/* 08019c84 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019c86 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08019c88 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08019c8a */ BL func_08019210 \n\
/* 08019c8e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08019c90 */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 08019c92 */ B branch_08019cdc \n\
\n\
.ltorg \n\
 \n\
branch_08019c9c: \n\
/* 08019c9c */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08019c9e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019ca0 */ BEQ branch_08019cb0 \n\
/* 08019ca2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08019ca4 */ BEQ branch_08019cbc \n\
/* 08019ca6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019ca8 */ LDR R1, =D_08054f30 \n\
/* 08019caa */ B branch_08019cc0 \n\
\n\
.ltorg \n\
 \n\
branch_08019cb0: \n\
/* 08019cb0 */ LDR R0, =D_08054f14 \n\
/* 08019cb2 */ LDRB R0, [R0] \n\
/* 08019cb4 */ STRB R0, [R5] \n\
/* 08019cb6 */ B branch_08019cc6 \n\
\n\
.ltorg \n\
 \n\
branch_08019cbc: \n\
/* 08019cbc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019cbe */ LDR R1, =D_08054f24 \n\
 \n\
branch_08019cc0: \n\
/* 08019cc0 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 08019cc2 */ BL memcpy \n\
 \n\
branch_08019cc6: \n\
/* 08019cc6 */ LDR R1, [R4] \n\
/* 08019cc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019cca */ BL func_080081a8 \n\
/* 08019cce */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019cd0 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08019cd2 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08019cd4 */ BL func_08019210 \n\
/* 08019cd8 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08019cda */ MOVS R6, 0x4 @ Set R6 to 0x4 \n\
 \n\
branch_08019cdc: \n\
/* 08019cdc */ LDR R1, =D_03005380 \n\
/* 08019cde */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08019ce0 */ LDR R0, [R1] \n\
/* 08019ce2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019ce4 */ STR R2, [SP] \n\
/* 08019ce6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08019ce8 */ LSLS R1, R1, 0x4 \n\
/* 08019cea */ STR R1, [SP, 0x4] \n\
/* 08019cec */ STR R2, [SP, 0x8] \n\
/* 08019cee */ STR R2, [SP, 0xC] \n\
/* 08019cf0 */ STR R2, [SP, 0x10] \n\
/* 08019cf2 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08019cf4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019cf6 */ BL func_0804d160 \n\
/* 08019cfa */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019cfc */ LSLS R1, R1, 0x10 \n\
/* 08019cfe */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08019d00 */ LDR R0, [R2] \n\
/* 08019d02 */ LSRS R4, R1, 0x10 \n\
/* 08019d04 */ ASRS R1, R1, 0x10 \n\
/* 08019d06 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08019d08 */ BL func_0804d8c4 \n\
/* 08019d0c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08019d0e */ LSLS R0, R3, 0x1 \n\
/* 08019d10 */ LDR R1, [SP, 0x18] \n\
/* 08019d12 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08019d14 */ STRH R4, [R0] \n\
/* 08019d16 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08019d18 */ ADD R10, R2 @ Add R2 to R10 \n\
/* 08019d1a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08019d1c */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 08019d1e */ BHI branch_08019d3a \n\
/* 08019d20 */ LDR R0, =D_030046a4 \n\
/* 08019d22 */ LDR R0, [R0] \n\
/* 08019d24 */ LDRB R0, [R0, 0x12] \n\
/* 08019d26 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019d28 */ BNE branch_08019d60 \n\
 \n\
branch_08019d2a: \n\
/* 08019d2a */ ADDS R7, 0x18 @ Add 0x18 to R7 \n\
/* 08019d2c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08019d2e */ ADD R8, R0 @ Add R0 to R8 \n\
 \n\
branch_08019d30: \n\
/* 08019d30 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08019d32 */ LDR R0, [R1] \n\
/* 08019d34 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019d36 */ BEQ branch_08019d3a \n\
/* 08019d38 */ B branch_08019c34 \n\
 \n\
branch_08019d3a: \n\
/* 08019d3a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08019d3c */ BL mem_heap_dealloc \n\
/* 08019d40 */ LDR R0, =D_030046a4 \n\
/* 08019d42 */ LDR R0, [R0] \n\
/* 08019d44 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08019d46 */ STRB R2, [R0, 0x13] \n\
/* 08019d48 */ LDR R3, [SP, 0x14] \n\
/* 08019d4a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08019d4c */ BNE branch_08019d72 \n\
/* 08019d4e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019d50 */ B branch_08019d8c \n\
\n\
.ltorg \n\
 \n\
branch_08019d60: \n\
/* 08019d60 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08019d62 */ LDR R0, [R1] \n\
/* 08019d64 */ LDR R2, [SP, 0x18] \n\
/* 08019d66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019d68 */ LDRSH R1, [R2, R3] \n\
/* 08019d6a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019d6c */ BL func_0804d770 \n\
/* 08019d70 */ B branch_08019d3a \n\
 \n\
branch_08019d72: \n\
/* 08019d72 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08019d74 */ LSLS R0, R1, 0x8 \n\
/* 08019d76 */ LDR R1, [SP, 0x14] \n\
/* 08019d78 */ BL __udivsi3 \n\
/* 08019d7c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019d7e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08019d80 */ LSLS R0, R0, 0x1 \n\
/* 08019d82 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08019d84 */ BNE branch_08019d8a \n\
/* 08019d86 */ LDR R2, [SP, 0x1C] \n\
/* 08019d88 */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
 \n\
branch_08019d8a: \n\
/* 08019d8a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_08019d8c: \n\
/* 08019d8c */ ADD SP, 0x20 \n\
/* 08019d8e */ POP {R3-R5} \n\
/* 08019d90 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08019d92 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08019d94 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08019d96 */ POP {R4-R7} \n\
/* 08019d98 */ POP {R1} \n\
/* 08019d9a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
