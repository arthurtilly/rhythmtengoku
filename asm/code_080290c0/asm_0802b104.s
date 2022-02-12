asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b104 \n\
/* 0802b104 */ PUSH {R4-R6, LR} \n\
/* 0802b106 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802b108 */ PUSH {R6} \n\
/* 0802b10a */ SUB SP, 0xC \n\
/* 0802b10c */ LDR R5, =D_030055d0 \n\
/* 0802b10e */ LDR R1, [R5] \n\
/* 0802b110 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802b112 */ STRB R0, [R1] \n\
/* 0802b114 */ BL func_0802b0d8 \n\
/* 0802b118 */ BL func_0800e0ec \n\
/* 0802b11c */ STR R6, [SP] \n\
/* 0802b11e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0802b120 */ STR R0, [SP, 0x4] \n\
/* 0802b122 */ STR R6, [SP, 0x8] \n\
/* 0802b124 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b126 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b128 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b12a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b12c */ BL func_0800e0a0 \n\
/* 0802b130 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b132 */ BL func_080173c4 \n\
/* 0802b136 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b138 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b13a */ BL func_08017338 \n\
/* 0802b13e */ LDR R0, [R5] \n\
/* 0802b140 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802b142 */ BL func_0802a9b4 \n\
/* 0802b146 */ LDR R0, [R5] \n\
/* 0802b148 */ MOVS R1, 0xAB @ Set R1 to 0xAB \n\
/* 0802b14a */ LSLS R1, R1, 0x3 \n\
/* 0802b14c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b14e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b150 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802b152 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802b154 */ LSLS R1, R1, 0x1 \n\
/* 0802b156 */ STRH R1, [R0] \n\
/* 0802b158 */ BL func_08029f0c \n\
/* 0802b15c */ BL func_0802a970 \n\
/* 0802b160 */ BL func_0802a564 \n\
/* 0802b164 */ BL func_0800c3b8 \n\
/* 0802b168 */ LSLS R0, R0, 0x10 \n\
/* 0802b16a */ LSRS R0, R0, 0x10 \n\
/* 0802b16c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802b16e */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0802b170 */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0802b172 */ BL func_0800a204 \n\
/* 0802b176 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802b178 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b17a */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 0802b17c */ BL func_0800ac68 \n\
/* 0802b180 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802b182 */ LSLS R1, R1, 0x4 \n\
/* 0802b184 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b186 */ BL func_0800aca0 \n\
/* 0802b18a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b18c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802b18e */ BL func_0800acd8 \n\
/* 0802b192 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b194 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0802b196 */ BL func_0800acb0 \n\
/* 0802b19a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b19c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b19e */ BL func_0800acbc \n\
/* 0802b1a2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b1a4 */ BL func_08018630 \n\
/* 0802b1a8 */ LDR R2, [R5] \n\
/* 0802b1aa */ LDRB R1, [R2, 0x1] \n\
/* 0802b1ac */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802b1ae */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b1b0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b1b2 */ STRB R0, [R2, 0x1] \n\
/* 0802b1b4 */ LDR R2, [R5] \n\
/* 0802b1b6 */ LDRB R1, [R2, 0x1] \n\
/* 0802b1b8 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0802b1ba */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b1bc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b1be */ STRB R0, [R2, 0x1] \n\
/* 0802b1c0 */ LDR R0, [R5] \n\
/* 0802b1c2 */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 0802b1c4 */ LSLS R2, R2, 0x3 \n\
/* 0802b1c6 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802b1c8 */ STR R6, [R1] \n\
/* 0802b1ca */ LDR R1, =0x00000554 \n\
/* 0802b1cc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b1ce */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802b1d0 */ STRB R2, [R0] \n\
/* 0802b1d2 */ LDR R0, [R5] \n\
/* 0802b1d4 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0802b1d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802b1d8 */ STRB R2, [R0] \n\
/* 0802b1da */ LDR R0, [R5] \n\
/* 0802b1dc */ LDR R2, =0x00000556 \n\
/* 0802b1de */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802b1e0 */ STRH R6, [R0] \n\
/* 0802b1e2 */ ADD SP, 0xC \n\
/* 0802b1e4 */ POP {R3} \n\
/* 0802b1e6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802b1e8 */ POP {R4-R6} \n\
/* 0802b1ea */ POP {R0} \n\
/* 0802b1ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
