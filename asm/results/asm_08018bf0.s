asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018bf0 \n\
/* 08018bf0 */ PUSH {R4-R6, LR} \n\
/* 08018bf2 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08018bf4 */ PUSH {R6} \n\
/* 08018bf6 */ SUB SP, 0x14 \n\
/* 08018bf8 */ LDR R0, =D_089d7980 \n\
/* 08018bfa */ LDR R0, [R0] \n\
/* 08018bfc */ MOVS R1, 0xFE @ Set R1 to 0xFE \n\
/* 08018bfe */ LSLS R1, R1, 0x1 \n\
/* 08018c00 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08018c02 */ LDR R0, [R0] \n\
/* 08018c04 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018c06 */ BNE branch_08018c28 \n\
/* 08018c08 */ LDR R0, =D_03005380 \n\
/* 08018c0a */ LDR R0, [R0] \n\
/* 08018c0c */ LDR R1, =D_030046a4 \n\
/* 08018c0e */ LDR R1, [R1] \n\
/* 08018c10 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08018c12 */ LDRSH R1, [R1, R2] \n\
/* 08018c14 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018c16 */ BL func_0804d770 \n\
/* 08018c1a */ B branch_08018caa \n\
\n\
.ltorg \n\
 \n\
branch_08018c28: \n\
/* 08018c28 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08018c2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018c2c */ BL func_08019210 \n\
/* 08018c30 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08018c32 */ LDR R6, =D_03005380 \n\
/* 08018c34 */ LDR R0, [R6] \n\
/* 08018c36 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08018c38 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08018c3a */ STR R2, [SP] \n\
/* 08018c3c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018c3e */ LSLS R2, R2, 0x4 \n\
/* 08018c40 */ STR R2, [SP, 0x4] \n\
/* 08018c42 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08018c44 */ STR R5, [SP, 0x8] \n\
/* 08018c46 */ STR R5, [SP, 0xC] \n\
/* 08018c48 */ STR R5, [SP, 0x10] \n\
/* 08018c4a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018c4c */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 08018c4e */ BL func_0804d160 \n\
/* 08018c52 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08018c54 */ LDR R0, [R6] \n\
/* 08018c56 */ LSLS R4, R4, 0x10 \n\
/* 08018c58 */ ASRS R4, R4, 0x10 \n\
/* 08018c5a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08018c5c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08018c5e */ BL func_0804d8c4 \n\
/* 08018c62 */ LDR R0, [R6] \n\
/* 08018c64 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08018c66 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08018c68 */ BL func_0804ddb0 \n\
/* 08018c6c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08018c6e */ LDR R0, [R6] \n\
/* 08018c70 */ LDR R1, =D_0890b6ec \n\
/* 08018c72 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08018c74 */ STR R2, [SP] \n\
/* 08018c76 */ LDR R2, =0x864 \n\
/* 08018c78 */ STR R2, [SP, 0x4] \n\
/* 08018c7a */ STR R5, [SP, 0x8] \n\
/* 08018c7c */ STR R5, [SP, 0xC] \n\
/* 08018c7e */ STR R5, [SP, 0x10] \n\
/* 08018c80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018c82 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08018c84 */ BL func_0804d160 \n\
/* 08018c88 */ LDR R0, [R6] \n\
/* 08018c8a */ LDR R1, =D_0890b6fc \n\
/* 08018c8c */ ADDS R4, 0x78 @ Add 0x78 to R4 \n\
/* 08018c8e */ LSLS R4, R4, 0x10 \n\
/* 08018c90 */ ASRS R4, R4, 0x10 \n\
/* 08018c92 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08018c94 */ STR R2, [SP] \n\
/* 08018c96 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 08018c98 */ LSLS R2, R2, 0x4 \n\
/* 08018c9a */ STR R2, [SP, 0x4] \n\
/* 08018c9c */ STR R5, [SP, 0x8] \n\
/* 08018c9e */ STR R5, [SP, 0xC] \n\
/* 08018ca0 */ STR R5, [SP, 0x10] \n\
/* 08018ca2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018ca4 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08018ca6 */ BL func_0804d160 \n\
 \n\
branch_08018caa: \n\
/* 08018caa */ ADD SP, 0x14 \n\
/* 08018cac */ POP {R3} \n\
/* 08018cae */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08018cb0 */ POP {R4-R6} \n\
/* 08018cb2 */ POP {R0} \n\
/* 08018cb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
