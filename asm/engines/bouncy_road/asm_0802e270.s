asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e270 \n\
/* 0802e270 */ PUSH {R4-R7, LR} \n\
/* 0802e272 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802e274 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802e276 */ PUSH {R6, R7} \n\
/* 0802e278 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e27a */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802e27c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802e27e */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0802e280 */ LDR R3, =gSineTable \n\
/* 0802e282 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0802e284 */ LSLS R6, R6, 0x2 \n\
/* 0802e286 */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 0802e288 */ LDR R2, =0x7ff  \n\
/* 0802e28a */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802e28c */ LSLS R0, R0, 0x1 \n\
/* 0802e28e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802e290 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802e292 */ LDRSH R1, [R0, R7] \n\
/* 0802e294 */ MOVS R0, 0xB2 @ Set R0 to 0xB2 \n\
/* 0802e296 */ LSLS R0, R0, 0x1 \n\
/* 0802e298 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802e29a */ ASRS R0, R0, 0x8 \n\
/* 0802e29c */ ADDS R5, 0x8C @ Add 0x8C to R5 \n\
/* 0802e29e */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0802e2a0 */ LSLS R4, R4, 0x1 \n\
/* 0802e2a2 */ ADDS R4, R4, R3 @ Set R4 to R4 + R3 \n\
/* 0802e2a4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e2a6 */ LDRSH R4, [R4, R1] \n\
/* 0802e2a8 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0802e2aa */ LSLS R0, R0, 0x8 \n\
/* 0802e2ac */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802e2ae */ BL __divsi3 \n\
/* 0802e2b2 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802e2b4 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802e2b6 */ STR R0, [R7] \n\
/* 0802e2b8 */ LSLS R5, R5, 0x8 \n\
/* 0802e2ba */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802e2bc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802e2be */ BL __divsi3 \n\
/* 0802e2c2 */ SUBS R0, 0x28 @ Subtract 0x28 from R0 \n\
/* 0802e2c4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0802e2c6 */ STR R0, [R1] \n\
/* 0802e2c8 */ LDR R7, [SP, 0x1C] \n\
/* 0802e2ca */ STR R4, [R7] \n\
/* 0802e2cc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802e2ce */ LSLS R0, R0, 0x9 \n\
/* 0802e2d0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802e2d2 */ BL __divsi3 \n\
/* 0802e2d6 */ LDR R1, [SP, 0x20] \n\
/* 0802e2d8 */ STR R0, [R1] \n\
/* 0802e2da */ POP {R3, R4} \n\
/* 0802e2dc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802e2de */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802e2e0 */ POP {R4-R7} \n\
/* 0802e2e2 */ POP {R0} \n\
/* 0802e2e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
