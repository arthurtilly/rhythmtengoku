asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f040 \n\
/* 0801f040 */ PUSH {R4-R7, LR} \n\
/* 0801f042 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801f044 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801f046 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801f048 */ PUSH {R5-R7} \n\
/* 0801f04a */ SUB SP, 0xC \n\
/* 0801f04c */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801f04e */ LDR R0, =D_030055d0 \n\
/* 0801f050 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0801f052 */ LDR R1, =D_03005380 \n\
/* 0801f054 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801f056 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f058 */ MOV R9, R2 @ Set R9 to R2 \n\
 \n\
branch_0801f05a: \n\
/* 0801f05a */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0801f05c */ LDR R1, [R0] \n\
/* 0801f05e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801f060 */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 0801f062 */ LDRH R0, [R0] \n\
/* 0801f064 */ LSLS R0, R0, 0x1 \n\
/* 0801f066 */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 0801f068 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801f06a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f06c */ LDR R0, [R2] \n\
/* 0801f06e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f070 */ LDRSH R5, [R1, R2] \n\
/* 0801f072 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801f074 */ STR R1, [SP] \n\
/* 0801f076 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801f078 */ STR R1, [SP, 0x4] \n\
/* 0801f07a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801f07c */ STR R1, [SP, 0x8] \n\
/* 0801f07e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f080 */ LDR R2, =D_088a0fd8 \n\
/* 0801f082 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f084 */ BL func_0804d8f8 \n\
/* 0801f088 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f08a */ LDR R6, [R2] \n\
/* 0801f08c */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0801f08e */ BL func_08001980 \n\
/* 0801f092 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f094 */ LSLS R4, R4, 0x10 \n\
/* 0801f096 */ ASRS R4, R4, 0x10 \n\
/* 0801f098 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801f09a */ BL func_08001980 \n\
/* 0801f09e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801f0a0 */ ADDS R3, 0x30 @ Add 0x30 to R3 \n\
/* 0801f0a2 */ LSLS R3, R3, 0x10 \n\
/* 0801f0a4 */ ASRS R3, R3, 0x10 \n\
/* 0801f0a6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801f0a8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f0aa */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801f0ac */ BL func_0804d5d4 \n\
/* 0801f0b0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801f0b2 */ LDR R0, [R1] \n\
/* 0801f0b4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f0b6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f0b8 */ BL func_0804d770 \n\
/* 0801f0bc */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0801f0be */ LDR R0, [R2] \n\
/* 0801f0c0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f0c2 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 0801f0c4 */ LDRH R0, [R1] \n\
/* 0801f0c6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801f0c8 */ STRH R0, [R1] \n\
/* 0801f0ca */ LSLS R0, R0, 0x10 \n\
/* 0801f0cc */ LSRS R0, R0, 0x10 \n\
/* 0801f0ce */ CMP R0, 0x1D @ Compare R0 and 0x1D \n\
/* 0801f0d0 */ BLS branch_0801f0d6 \n\
/* 0801f0d2 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0801f0d4 */ STRH R0, [R1] \n\
 \n\
branch_0801f0d6: \n\
/* 0801f0d6 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f0d8 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0801f0da */ BLS branch_0801f05a \n\
/* 0801f0dc */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801f0de */ LDR R1, =D_030055d0 \n\
/* 0801f0e0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0801f0e2 */ LDR R2, =D_03005380 \n\
/* 0801f0e4 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0801f0e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f0e8 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0801f0ea: \n\
/* 0801f0ea */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801f0ec */ LDR R1, [R2] \n\
/* 0801f0ee */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801f0f0 */ ADDS R0, 0x6C @ Add 0x6C to R0 \n\
/* 0801f0f2 */ LDRH R0, [R0] \n\
/* 0801f0f4 */ LSLS R0, R0, 0x1 \n\
/* 0801f0f6 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 0801f0f8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801f0fa */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801f0fc */ LDR R0, [R2] \n\
/* 0801f0fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f100 */ LDRSH R5, [R1, R2] \n\
/* 0801f102 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f104 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f106 */ BL func_0804cebc \n\
/* 0801f10a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801f10c */ LDR R6, [R0] \n\
/* 0801f10e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0801f110 */ BL func_08001980 \n\
/* 0801f114 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f116 */ LSLS R4, R4, 0x10 \n\
/* 0801f118 */ ASRS R4, R4, 0x10 \n\
/* 0801f11a */ MOVS R0, 0x32 @ Set R0 to 0x32 \n\
/* 0801f11c */ BL func_08001980 \n\
/* 0801f120 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801f122 */ ADDS R3, 0x6E @ Add 0x6E to R3 \n\
/* 0801f124 */ LSLS R3, R3, 0x10 \n\
/* 0801f126 */ ASRS R3, R3, 0x10 \n\
/* 0801f128 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801f12a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f12c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801f12e */ BL func_0804d5d4 \n\
/* 0801f132 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801f134 */ LDR R0, [R1] \n\
/* 0801f136 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f138 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f13a */ BL func_0804d770 \n\
/* 0801f13e */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801f140 */ LDR R0, [R2] \n\
/* 0801f142 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f144 */ ADDS R1, 0x6C @ Add 0x6C to R1 \n\
/* 0801f146 */ LDRH R0, [R1] \n\
/* 0801f148 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801f14a */ STRH R0, [R1] \n\
/* 0801f14c */ LSLS R0, R0, 0x10 \n\
/* 0801f14e */ LSRS R0, R0, 0x10 \n\
/* 0801f150 */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 0801f152 */ BLS branch_0801f158 \n\
/* 0801f154 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0801f156 */ STRH R0, [R1] \n\
 \n\
branch_0801f158: \n\
/* 0801f158 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f15a */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0801f15c */ BLS branch_0801f0ea \n\
/* 0801f15e */ ADD SP, 0xC \n\
/* 0801f160 */ POP {R3-R5} \n\
/* 0801f162 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801f164 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801f166 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801f168 */ POP {R4-R7} \n\
/* 0801f16a */ POP {R0} \n\
/* 0801f16c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
