asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007a14 \n\
/* 08007a14 */ PUSH {R4-R7, LR} \n\
/* 08007a16 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08007a18 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08007a1a */ PUSH {R6, R7} \n\
/* 08007a1c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08007a1e */ LDRH R6, [R7, 0xE] \n\
/* 08007a20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007a22 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08007a24 */ LDRH R0, [R7, 0xC] \n\
/* 08007a26 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08007a28 */ STRH R0, [R7, 0xC] \n\
/* 08007a2a */ LSLS R0, R0, 0x10 \n\
/* 08007a2c */ LSRS R0, R0, 0x10 \n\
/* 08007a2e */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08007a30 */ BLT branch_08007a36 \n\
/* 08007a32 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08007a34 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_08007a36: \n\
/* 08007a36 */ LDRH R5, [R7, 0xC] \n\
/* 08007a38 */ LSLS R0, R5, 0xB \n\
/* 08007a3a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08007a3c */ BL func_08007b80 \n\
/* 08007a40 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08007a42 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08007a44 */ LDRSH R0, [R7, R2] \n\
/* 08007a46 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007a48 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08007a4a */ BL func_08007b80 \n\
/* 08007a4e */ LDRH R4, [R7, 0x2] \n\
/* 08007a50 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08007a52 */ LSLS R4, R4, 0x10 \n\
/* 08007a54 */ LSRS R4, R4, 0x10 \n\
/* 08007a56 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08007a58 */ LDRSH R0, [R7, R1] \n\
/* 08007a5a */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007a5c */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08007a5e */ BL func_08007b80 \n\
/* 08007a62 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08007a64 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08007a66 */ BL func_080019a4 \n\
/* 08007a6a */ LDRH R3, [R7, 0x4] \n\
/* 08007a6c */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08007a6e */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08007a70 */ LDRSH R1, [R7, R2] \n\
/* 08007a72 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08007a74 */ ASRS R0, R0, 0x8 \n\
/* 08007a76 */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 08007a78 */ LDR R0, =D_03005380 \n\
/* 08007a7a */ LDR R0, [R0] \n\
/* 08007a7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007a7e */ LDRSH R1, [R7, R2] \n\
/* 08007a80 */ LSLS R4, R4, 0x10 \n\
/* 08007a82 */ ASRS R4, R4, 0x10 \n\
/* 08007a84 */ LSLS R3, R3, 0x10 \n\
/* 08007a86 */ ASRS R3, R3, 0x10 \n\
/* 08007a88 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08007a8a */ BL func_0804d5d4 \n\
/* 08007a8e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08007a90 */ POP {R3, R4} \n\
/* 08007a92 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08007a94 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08007a96 */ POP {R4-R7} \n\
/* 08007a98 */ POP {R1} \n\
/* 08007a9a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
