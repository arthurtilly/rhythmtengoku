asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ca34 \n\
/* 0801ca34 */ PUSH {R4-R7, LR} \n\
/* 0801ca36 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0801ca38 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801ca3a */ PUSH {R6, R7} \n\
/* 0801ca3c */ LDR R2, =D_030046a4 \n\
/* 0801ca3e */ LSLS R1, R0, 0x3 \n\
/* 0801ca40 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801ca42 */ LSLS R1, R1, 0x2 \n\
/* 0801ca44 */ ADDS R1, 0x14 @ Add 0x14 to R1 \n\
/* 0801ca46 */ LDR R6, [R2] \n\
/* 0801ca48 */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 0801ca4a */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0801ca4c */ LDRSH R1, [R6, R0] \n\
/* 0801ca4e */ LDR R2, =D_089361cc \n\
/* 0801ca50 */ LDRB R0, [R6, 0x10] \n\
/* 0801ca52 */ LSLS R0, R0, 0x1 \n\
/* 0801ca54 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801ca56 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801ca58 */ LDRSH R0, [R0, R3] \n\
/* 0801ca5a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801ca5c */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 0801ca5e */ ASRS R4, R4, 0x8 \n\
/* 0801ca60 */ MOVS R5, 0x18 @ Set R5 to 0x18 \n\
/* 0801ca62 */ LDRSH R3, [R6, R5] \n\
/* 0801ca64 */ LDRB R1, [R6, 0x14] \n\
/* 0801ca66 */ LSLS R1, R1, 0x1 \n\
/* 0801ca68 */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 0801ca6a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801ca6c */ LDRSH R0, [R2, R7] \n\
/* 0801ca6e */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0801ca70 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0801ca72 */ ASRS R0, R2, 0x8 \n\
/* 0801ca74 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801ca76 */ LDR R0, =D_08935fcc \n\
/* 0801ca78 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801ca7a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801ca7c */ LDRSH R0, [R1, R5] \n\
/* 0801ca7e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801ca80 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0801ca82 */ ASRS R5, R1, 0x8 \n\
/* 0801ca84 */ MOVS R7, 0x8 @ Set R7 to 0x8 \n\
/* 0801ca86 */ LDRSH R0, [R6, R7] \n\
/* 0801ca88 */ ASRS R2, R2, 0x10 \n\
/* 0801ca8a */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0801ca8c */ MOVS R3, 0xA @ Set R3 to 0xA \n\
/* 0801ca8e */ LDRSH R0, [R6, R3] \n\
/* 0801ca90 */ ASRS R1, R1, 0x10 \n\
/* 0801ca92 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ca94 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0801ca96 */ LDR R7, =D_03005380 \n\
/* 0801ca98 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 0801ca9a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801ca9c */ LDR R0, [R1] \n\
/* 0801ca9e */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 0801caa0 */ LDRSH R1, [R6, R7] \n\
/* 0801caa2 */ LSLS R2, R2, 0x10 \n\
/* 0801caa4 */ ASRS R2, R2, 0x10 \n\
/* 0801caa6 */ LSLS R3, R3, 0x10 \n\
/* 0801caa8 */ ASRS R3, R3, 0x10 \n\
/* 0801caaa */ BL func_0804d5d4 \n\
/* 0801caae */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801cab0 */ LSLS R0, R1, 0x4 \n\
/* 0801cab2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801cab4 */ LSLS R1, R5, 0x4 \n\
/* 0801cab6 */ SUBS R1, R1, R5 @ Set R1 to R1 - R5 \n\
/* 0801cab8 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0801caba */ LDRSH R2, [R6, R3] \n\
/* 0801cabc */ ASRS R0, R0, 0xD \n\
/* 0801cabe */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0801cac0 */ MOVS R5, 0xA @ Set R5 to 0xA \n\
/* 0801cac2 */ LDRSH R0, [R6, R5] \n\
/* 0801cac4 */ ASRS R1, R1, 0xD \n\
/* 0801cac6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801cac8 */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0801caca */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801cacc */ LDR R0, [R7] \n\
/* 0801cace */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0801cad0 */ LDRSH R1, [R6, R4] \n\
/* 0801cad2 */ LSLS R5, R2, 0x10 \n\
/* 0801cad4 */ ASRS R5, R5, 0x10 \n\
/* 0801cad6 */ LSLS R4, R3, 0x10 \n\
/* 0801cad8 */ ASRS R4, R4, 0x10 \n\
/* 0801cada */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801cadc */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0801cade */ BL func_0804d5d4 \n\
/* 0801cae2 */ LDR R0, [R7] \n\
/* 0801cae4 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0801cae6 */ LDRSH R1, [R6, R7] \n\
/* 0801cae8 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801caea */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0801caec */ BL func_0804d5d4 \n\
/* 0801caf0 */ POP {R3, R4} \n\
/* 0801caf2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801caf4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801caf6 */ POP {R4-R7} \n\
/* 0801caf8 */ POP {R0} \n\
/* 0801cafa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
