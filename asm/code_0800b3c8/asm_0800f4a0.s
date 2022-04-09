asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f4a0 \n\
/* 0800f4a0 */ PUSH {R4-R7, LR} \n\
/* 0800f4a2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800f4a4 */ PUSH {R7} \n\
/* 0800f4a6 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0800f4a8 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0800f4aa */ ADDS R3, 0x20 @ Add 0x20 to R3 \n\
/* 0800f4ac */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0800f4ae */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0800f4b0 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800f4b2 */ LDR R6, [R1] \n\
/* 0800f4b4 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0800f4b6 */ LDR R0, [R4, 0xC] \n\
/* 0800f4b8 */ SUBS R6, R6, R0 @ Set R6 to R6 - R0 \n\
/* 0800f4ba */ LDR R4, [R1, 0x4] \n\
/* 0800f4bc */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800f4be */ LDR R0, [R5, 0x4] \n\
/* 0800f4c0 */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0800f4c2 */ LDR R5, [R1, 0x8] \n\
/* 0800f4c4 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800f4c6 */ LDR R0, [R7, 0x8] \n\
/* 0800f4c8 */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 0800f4ca */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800f4cc */ MOVS R7, 0x20 @ Set R7 to 0x20 \n\
/* 0800f4ce */ LDRSH R0, [R1, R7] \n\
/* 0800f4d0 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0800f4d2 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0800f4d4 */ LDRSH R1, [R3, R7] \n\
/* 0800f4d6 */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 0800f4d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f4da */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0800f4dc */ LDRSH R1, [R3, R7] \n\
/* 0800f4de */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0800f4e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f4e2 */ ASRS R0, R0, 0x8 \n\
/* 0800f4e4 */ STR R0, [R2] \n\
/* 0800f4e6 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0800f4e8 */ LDRSH R0, [R3, R1] \n\
/* 0800f4ea */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0800f4ec */ MOVS R7, 0x8 @ Set R7 to 0x8 \n\
/* 0800f4ee */ LDRSH R1, [R3, R7] \n\
/* 0800f4f0 */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 0800f4f2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f4f4 */ MOVS R7, 0xA @ Set R7 to 0xA \n\
/* 0800f4f6 */ LDRSH R1, [R3, R7] \n\
/* 0800f4f8 */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0800f4fa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f4fc */ ASRS R0, R0, 0x8 \n\
/* 0800f4fe */ STR R0, [R2, 0x4] \n\
/* 0800f500 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800f502 */ LDRSH R0, [R3, R1] \n\
/* 0800f504 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0800f506 */ MOVS R6, 0xE @ Set R6 to 0xE \n\
/* 0800f508 */ LDRSH R1, [R3, R6] \n\
/* 0800f50a */ MULS R1, R4 @ Multiply R1 by R4 \n\
/* 0800f50c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f50e */ MOVS R7, 0x10 @ Set R7 to 0x10 \n\
/* 0800f510 */ LDRSH R1, [R3, R7] \n\
/* 0800f512 */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0800f514 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800f516 */ ASRS R0, R0, 0x8 \n\
/* 0800f518 */ STR R0, [R2, 0x8] \n\
/* 0800f51a */ POP {R3} \n\
/* 0800f51c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800f51e */ POP {R4-R7} \n\
/* 0800f520 */ POP {R0} \n\
/* 0800f522 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
