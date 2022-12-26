asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014c10 \n\
/* 08014c10 */ PUSH {R4-R7, LR} \n\
/* 08014c12 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08014c14 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08014c16 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08014c18 */ PUSH {R5-R7} \n\
/* 08014c1a */ SUB SP, 0x14 \n\
/* 08014c1c */ LDR R0, =D_03005380 \n\
/* 08014c1e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08014c20 */ LDR R0, [R0] \n\
/* 08014c22 */ LDR R1, =anim_game_select_medal_text \n\
/* 08014c24 */ MOVS R2, 0x97 @ Set R2 to 0x97 \n\
/* 08014c26 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08014c28 */ STR R2, [SP] \n\
/* 08014c2a */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08014c2c */ LSLS R4, R4, 0x4 \n\
/* 08014c2e */ STR R4, [SP, 0x4] \n\
/* 08014c30 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08014c32 */ STR R6, [SP, 0x8] \n\
/* 08014c34 */ STR R6, [SP, 0xC] \n\
/* 08014c36 */ STR R6, [SP, 0x10] \n\
/* 08014c38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014c3a */ MOVS R3, 0xA2 @ Set R3 to 0xA2 \n\
/* 08014c3c */ BL func_0804d160 \n\
/* 08014c40 */ LDR R5, =D_030046a4 \n\
/* 08014c42 */ LDR R1, [R5] \n\
/* 08014c44 */ MOVS R2, 0x9D @ Set R2 to 0x9D \n\
/* 08014c46 */ LSLS R2, R2, 0x3 \n\
/* 08014c48 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014c4a */ STRH R0, [R1] \n\
/* 08014c4c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014c4e */ LDR R0, [R1] \n\
/* 08014c50 */ LDR R7, =anim_game_select_medal_num \n\
/* 08014c52 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08014c54 */ STR R2, [SP] \n\
/* 08014c56 */ STR R4, [SP, 0x4] \n\
/* 08014c58 */ STR R6, [SP, 0x8] \n\
/* 08014c5a */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 08014c5c */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08014c5e */ STR R1, [SP, 0xC] \n\
/* 08014c60 */ STR R6, [SP, 0x10] \n\
/* 08014c62 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08014c64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014c66 */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08014c68 */ BL func_0804d160 \n\
/* 08014c6c */ LDR R1, [R5] \n\
/* 08014c6e */ LDR R2, =0x4ea \n\
/* 08014c70 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014c72 */ STRH R0, [R1] \n\
/* 08014c74 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014c76 */ LDR R0, [R1] \n\
/* 08014c78 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08014c7a */ STR R2, [SP] \n\
/* 08014c7c */ STR R4, [SP, 0x4] \n\
/* 08014c7e */ STR R6, [SP, 0x8] \n\
/* 08014c80 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08014c82 */ STR R1, [SP, 0xC] \n\
/* 08014c84 */ STR R6, [SP, 0x10] \n\
/* 08014c86 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08014c88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014c8a */ MOVS R3, 0xA8 @ Set R3 to 0xA8 \n\
/* 08014c8c */ BL func_0804d160 \n\
/* 08014c90 */ LDR R1, [R5] \n\
/* 08014c92 */ LDR R2, =0x4ec \n\
/* 08014c94 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08014c96 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08014c98 */ STRH R0, [R1] \n\
/* 08014c9a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08014c9c */ LDR R0, [R2] \n\
/* 08014c9e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014ca0 */ LDRSH R1, [R1, R2] \n\
/* 08014ca2 */ MOVS R2, 0xA1 @ Set R2 to 0xA1 \n\
/* 08014ca4 */ MOVS R3, 0x97 @ Set R3 to 0x97 \n\
/* 08014ca6 */ BL func_0804d5d4 \n\
/* 08014caa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014cac */ LDR R0, [R1] \n\
/* 08014cae */ LDR R1, [R5] \n\
/* 08014cb0 */ MOVS R2, 0x9D @ Set R2 to 0x9D \n\
/* 08014cb2 */ LSLS R2, R2, 0x3 \n\
/* 08014cb4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014cb6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014cb8 */ LDRSH R1, [R1, R2] \n\
/* 08014cba */ LDR R4, =(D_03004b10 + 0x10) \n\
/* 08014cbc */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08014cbe */ LDR R2, =(D_03004b10 + 0x10) \n\
/* 08014cc0 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08014cc2 */ BL func_0804db44 \n\
/* 08014cc6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014cc8 */ LDR R0, [R1] \n\
/* 08014cca */ LDR R1, [R5] \n\
/* 08014ccc */ LDR R2, =0x4ea \n\
/* 08014cce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014cd0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014cd2 */ LDRSH R1, [R1, R2] \n\
/* 08014cd4 */ LDR R2, =(D_03004b10 + 0x10) \n\
/* 08014cd6 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08014cd8 */ BL func_0804db44 \n\
/* 08014cdc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08014cde */ LDR R0, [R1] \n\
/* 08014ce0 */ LDR R1, [R5] \n\
/* 08014ce2 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08014ce4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08014ce6 */ LDRSH R1, [R1, R2] \n\
/* 08014ce8 */ LDR R2, =(D_03004b10 + 0x10) \n\
/* 08014cea */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08014cec */ BL func_0804db44 \n\
/* 08014cf0 */ LDR R0, =D_030046a8 \n\
/* 08014cf2 */ LDR R0, [R0] \n\
/* 08014cf4 */ LDR R1, =0x29e \n\
/* 08014cf6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014cf8 */ LDRB R0, [R0] \n\
/* 08014cfa */ BL func_08014b68 \n\
/* 08014cfe */ LDR R0, [R5] \n\
/* 08014d00 */ LDR R2, =0x4ee \n\
/* 08014d02 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08014d04 */ STRH R6, [R0] \n\
/* 08014d06 */ ADD SP, 0x14 \n\
/* 08014d08 */ POP {R3-R5} \n\
/* 08014d0a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08014d0c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08014d0e */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08014d10 */ POP {R4-R7} \n\
/* 08014d12 */ POP {R0} \n\
/* 08014d14 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
