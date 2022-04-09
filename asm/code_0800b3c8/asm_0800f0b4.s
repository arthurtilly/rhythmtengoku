asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f0b4 \n\
/* 0800f0b4 */ PUSH {R4-R7, LR} \n\
/* 0800f0b6 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0800f0b8 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800f0ba */ PUSH {R6, R7} \n\
/* 0800f0bc */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800f0be */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800f0c0 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800f0c2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f0c4 */ LDR R5, [SP, 0x1C] \n\
/* 0800f0c6 */ LSLS R5, R5, 0x10 \n\
/* 0800f0c8 */ LSRS R5, R5, 0x10 \n\
/* 0800f0ca */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800f0cc */ BL func_0800c43c \n\
/* 0800f0d0 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800f0d2 */ BL func_0800c3b8 \n\
/* 0800f0d6 */ STRH R0, [R7] \n\
/* 0800f0d8 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800f0da */ STR R0, [R7, 0x4] \n\
/* 0800f0dc */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f0de */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 0800f0e0 */ STRH R6, [R0] \n\
/* 0800f0e2 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800f0e4 */ STRH R4, [R0] \n\
/* 0800f0e6 */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
/* 0800f0e8 */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 0800f0ea */ STRH R4, [R0] \n\
/* 0800f0ec */ LDRH R0, [R0] \n\
/* 0800f0ee */ LSLS R0, R0, 0x4 \n\
/* 0800f0f0 */ BL func_0800c43c \n\
/* 0800f0f4 */ STR R0, [R7, 0x8] \n\
/* 0800f0f6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f0f8 */ ADDS R0, 0x4F @ Add 0x4F to R0 \n\
/* 0800f0fa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f0fc */ STRB R1, [R0] \n\
/* 0800f0fe */ ADDS R0, 0x29 @ Add 0x29 to R0 \n\
/* 0800f100 */ STRH R5, [R0] \n\
/* 0800f102 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800f104 */ LSLS R0, R1, 0x1 \n\
/* 0800f106 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0800f108 */ LSLS R0, R0, 0x4 \n\
/* 0800f10a */ BL func_0800c43c \n\
/* 0800f10e */ STR R0, [R7, 0x50] \n\
/* 0800f110 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800f112 */ CMP R2, R8 @ Compare R2 and R8 \n\
/* 0800f114 */ BCS branch_0800f12e \n\
/* 0800f116 */ LDR R0, =0xffff \n\
/* 0800f118 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f11a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0800f11c: \n\
/* 0800f11c */ LDR R1, [R7, 0x50] \n\
/* 0800f11e */ ADDS R1, R3, R1 @ Set R1 to R3 + R1 \n\
/* 0800f120 */ LDRH R0, [R1] \n\
/* 0800f122 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0800f124 */ STRH R0, [R1] \n\
/* 0800f126 */ ADDS R3, 0x30 @ Add 0x30 to R3 \n\
/* 0800f128 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800f12a */ CMP R2, R8 @ Compare R2 and R8 \n\
/* 0800f12c */ BCC branch_0800f11c \n\
 \n\
branch_0800f12e: \n\
/* 0800f12e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800f130 */ ADDS R5, R7, 0x0 @ Set R5 to R7 + 0x0 \n\
/* 0800f132 */ ADDS R5, 0x4E @ Add 0x4E to R5 \n\
 \n\
branch_0800f134: \n\
/* 0800f134 */ BL func_0800c3b8 \n\
/* 0800f138 */ BL func_08002194 \n\
/* 0800f13c */ LSLS R0, R0, 0x18 \n\
/* 0800f13e */ LSRS R1, R0, 0x18 \n\
/* 0800f140 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800f142 */ BLT branch_0800f154 \n\
/* 0800f144 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f146 */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0800f148 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800f14a */ STRB R1, [R0] \n\
/* 0800f14c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800f14e */ LDR R1, [SP, 0x20] \n\
/* 0800f150 */ CMP R4, R1 @ Check R4 - R1 \n\
/* 0800f152 */ BCC branch_0800f134 \n\
 \n\
branch_0800f154: \n\
/* 0800f154 */ STRB R4, [R5] \n\
/* 0800f156 */ LSLS R0, R4, 0x3 \n\
/* 0800f158 */ BL func_0800c43c \n\
/* 0800f15c */ STR R0, [R7, 0x74] \n\
/* 0800f15e */ LDR R1, =0x04000020 @ !Hardware REG_BG2PA \n\
/* 0800f160 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800f162 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0800f164 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800f166 */ BL func_0800402c \n\
/* 0800f16a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800f16c */ POP {R3, R4} \n\
/* 0800f16e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f170 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800f172 */ POP {R4-R7} \n\
/* 0800f174 */ POP {R1} \n\
/* 0800f176 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
