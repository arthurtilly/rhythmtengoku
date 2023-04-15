asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011c1c \n\
/* 08011c1c */ PUSH {R4-R7, LR} \n\
/* 08011c1e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08011c20 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08011c22 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08011c24 */ PUSH {R5-R7} \n\
/* 08011c26 */ SUB SP, 0x24 \n\
/* 08011c28 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08011c2a */ STR R1, [SP, 0x14] \n\
/* 08011c2c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08011c2e */ STR R3, [SP, 0x18] \n\
/* 08011c30 */ LSLS R1, R4, 0x5 \n\
/* 08011c32 */ LDR R0, =(VRAMBase + 0x10000) \n\
/* 08011c34 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08011c36 */ LDR R0, =D_08cc4bcc \n\
/* 08011c38 */ BL func_08003eb8 \n\
/* 08011c3c */ LDR R2, =(studio_mem_chart_pal + 2) \n\
/* 08011c3e */ LDR R3, [SP, 0x18] \n\
/* 08011c40 */ LSLS R1, R3, 0x5 \n\
/* 08011c42 */ LDR R0, =(D_03004b10 + 0x256) \n\
/* 08011c44 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08011c46 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08011c48 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011c4a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08011c4c */ LSLS R5, R6, 0x10 \n\
/* 08011c4e */ LSLS R4, R4, 0x10 \n\
/* 08011c50 */ STR R4, [SP, 0x1C] \n\
/* 08011c52 */ LSLS R3, R3, 0x18 \n\
/* 08011c54 */ STR R3, [SP, 0x20] \n\
 \n\
branch_08011c56: \n\
/* 08011c56 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011c58 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08011c5a */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08011c5c */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08011c5e */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 08011c60 */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 08011c62 */ BCS branch_08011c72 \n\
 \n\
branch_08011c64: \n\
/* 08011c64 */ LDRH R0, [R2] \n\
/* 08011c66 */ STRH R0, [R1] \n\
/* 08011c68 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 08011c6a */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08011c6c */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08011c6e */ CMP R3, R8 @ Compare R3 and R8 \n\
/* 08011c70 */ BCC branch_08011c64 \n\
 \n\
branch_08011c72: \n\
/* 08011c72 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08011c74 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08011c76 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08011c78 */ CMP R7, 0xA @ Compare R7 and 0xA \n\
/* 08011c7a */ BLS branch_08011c56 \n\
/* 08011c7c */ LSRS R0, R5, 0x10 \n\
/* 08011c7e */ MOVS R1, 0x1C @ Set R1 to 0x1C \n\
/* 08011c80 */ BL mem_heap_alloc_id \n\
/* 08011c84 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08011c86 */ LDR R4, =D_03005380 \n\
/* 08011c88 */ LDR R0, [R4] \n\
/* 08011c8a */ LDR R1, =anim_studio_mem_chart_borders \n\
/* 08011c8c */ MOVS R2, 0x9C @ Set R2 to 0x9C \n\
/* 08011c8e */ STR R2, [SP] \n\
/* 08011c90 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08011c92 */ LSLS R3, R3, 0x4 \n\
/* 08011c94 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08011c96 */ STR R3, [SP, 0x4] \n\
/* 08011c98 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08011c9a */ STR R7, [SP, 0x8] \n\
/* 08011c9c */ STR R7, [SP, 0xC] \n\
/* 08011c9e */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08011ca0 */ LSLS R6, R6, 0x8 \n\
/* 08011ca2 */ STR R6, [SP, 0x10] \n\
/* 08011ca4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011ca6 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08011ca8 */ BL func_0804d160 \n\
/* 08011cac */ STRH R0, [R5] \n\
/* 08011cae */ LDR R0, [R4] \n\
/* 08011cb0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011cb2 */ LDRSH R1, [R5, R2] \n\
/* 08011cb4 */ LDR R3, [SP, 0x1C] \n\
/* 08011cb6 */ ASRS R3, R3, 0x10 \n\
/* 08011cb8 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08011cba */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08011cbc */ BL func_0804d890 \n\
/* 08011cc0 */ LDR R0, [R4] \n\
/* 08011cc2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011cc4 */ LDRSH R1, [R5, R2] \n\
/* 08011cc6 */ LDR R3, [SP, 0x20] \n\
/* 08011cc8 */ ASRS R3, R3, 0x18 \n\
/* 08011cca */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08011ccc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08011cce */ BL func_0804d8c4 \n\
/* 08011cd2 */ LDR R0, [R4] \n\
/* 08011cd4 */ LDR R1, =anim_studio_mem_chart_data \n\
/* 08011cd6 */ MOVS R2, 0x9C @ Set R2 to 0x9C \n\
/* 08011cd8 */ STR R2, [SP] \n\
/* 08011cda */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08011cdc */ STR R3, [SP, 0x4] \n\
/* 08011cde */ STR R7, [SP, 0x8] \n\
/* 08011ce0 */ STR R7, [SP, 0xC] \n\
/* 08011ce2 */ STR R6, [SP, 0x10] \n\
/* 08011ce4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011ce6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011ce8 */ BL func_0804d160 \n\
/* 08011cec */ STRH R0, [R5, 0x2] \n\
/* 08011cee */ LDR R0, [R4] \n\
/* 08011cf0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08011cf2 */ LDRSH R1, [R5, R2] \n\
/* 08011cf4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08011cf6 */ BL func_0804d890 \n\
/* 08011cfa */ LDR R0, [R4] \n\
/* 08011cfc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08011cfe */ LDRSH R1, [R5, R3] \n\
/* 08011d00 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08011d02 */ BL func_0804d8c4 \n\
/* 08011d06 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
 \n\
branch_08011d08: \n\
/* 08011d08 */ LDR R0, [R6] \n\
/* 08011d0a */ MOVS R1, 0x9C @ Set R1 to 0x9C \n\
/* 08011d0c */ STR R1, [SP] \n\
/* 08011d0e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08011d10 */ LSLS R1, R1, 0x4 \n\
/* 08011d12 */ STR R1, [SP, 0x4] \n\
/* 08011d14 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011d16 */ STR R1, [SP, 0x8] \n\
/* 08011d18 */ STR R1, [SP, 0xC] \n\
/* 08011d1a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08011d1c */ LSLS R1, R1, 0x8 \n\
/* 08011d1e */ STR R1, [SP, 0x10] \n\
/* 08011d20 */ LDR R1, =anim_studio_mem_chart_data \n\
/* 08011d22 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011d24 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08011d26 */ BL func_0804d160 \n\
/* 08011d2a */ LSLS R1, R7, 0x1 \n\
/* 08011d2c */ ADDS R4, R5, 0x4 @ Set R4 to R5 + 0x4 \n\
/* 08011d2e */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08011d30 */ STRH R0, [R4] \n\
/* 08011d32 */ LDR R0, [R6] \n\
/* 08011d34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011d36 */ LDRSH R1, [R4, R2] \n\
/* 08011d38 */ LDR R3, [SP, 0x1C] \n\
/* 08011d3a */ ASRS R2, R3, 0x10 \n\
/* 08011d3c */ BL func_0804d890 \n\
/* 08011d40 */ LDR R0, [R6] \n\
/* 08011d42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011d44 */ LDRSH R1, [R4, R2] \n\
/* 08011d46 */ LDR R3, [SP, 0x18] \n\
/* 08011d48 */ ADDS R2, R3, R7 @ Set R2 to R3 + R7 \n\
/* 08011d4a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08011d4c */ LSLS R2, R2, 0x18 \n\
/* 08011d4e */ ASRS R2, R2, 0x18 \n\
/* 08011d50 */ BL func_0804d8c4 \n\
/* 08011d54 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08011d56 */ CMP R7, 0x9 @ Compare R7 and 0x9 \n\
/* 08011d58 */ BLS branch_08011d08 \n\
/* 08011d5a */ LDR R0, [SP, 0x14] \n\
/* 08011d5c */ STR R0, [R5, 0x18] \n\
/* 08011d5e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08011d60 */ ADD SP, 0x24 \n\
/* 08011d62 */ POP {R3-R5} \n\
/* 08011d64 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08011d66 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08011d68 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08011d6a */ POP {R4-R7} \n\
/* 08011d6c */ POP {R1} \n\
/* 08011d6e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
