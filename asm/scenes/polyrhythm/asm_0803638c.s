asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803638c \n\
/* 0803638c */ PUSH {R4-R6, LR} \n\
/* 0803638e */ SUB SP, 0x14 \n\
/* 08036390 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08036392 */ ADD R2, SP, 0x10 \n\
/* 08036394 */ ADD R1, SP, 0xC \n\
/* 08036396 */ BL func_080360a8 \n\
/* 0803639a */ LDR R1, [SP, 0xC] \n\
/* 0803639c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803639e */ BLT branch_0803641c \n\
/* 080363a0 */ LDR R5, =D_030055d0 \n\
/* 080363a2 */ LSLS R0, R6, 0x7 \n\
/* 080363a4 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080363a6 */ LDR R4, [R5] \n\
/* 080363a8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080363aa */ LSLS R0, R1, 0x3 \n\
/* 080363ac */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080363ae */ LDRB R0, [R4] \n\
/* 080363b0 */ MOVS R2, 0x39 @ Set R2 to 0x39 \n\
/* 080363b2 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 080363b4 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 080363b6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080363b8 */ ORRS R2, R0 @ Set R2 to R2 | R0 \n\
/* 080363ba */ STRB R2, [R4] \n\
/* 080363bc */ LDR R0, =D_03005380 \n\
/* 080363be */ LDR R0, [R0] \n\
/* 080363c0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080363c2 */ LDRSH R1, [R4, R3] \n\
/* 080363c4 */ LDR R3, =D_089e5c1c \n\
/* 080363c6 */ LSLS R2, R2, 0x1D \n\
/* 080363c8 */ LSRS R2, R2, 0x1B \n\
/* 080363ca */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080363cc */ LDR R2, [R2] \n\
/* 080363ce */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080363d0 */ STR R3, [SP] \n\
/* 080363d2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080363d4 */ STR R3, [SP, 0x4] \n\
/* 080363d6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080363d8 */ STR R3, [SP, 0x8] \n\
/* 080363da */ BL func_0804d8f8 \n\
/* 080363de */ LDR R1, [R5] \n\
/* 080363e0 */ MOVS R0, 0x82 @ Set R0 to 0x82 \n\
/* 080363e2 */ LSLS R0, R0, 0x1 \n\
/* 080363e4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080363e6 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080363e8 */ LDRB R0, [R1] \n\
/* 080363ea */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080363ec */ STRB R0, [R1] \n\
/* 080363ee */ LDR R1, =D_089e5c34 \n\
/* 080363f0 */ LDRB R0, [R4] \n\
/* 080363f2 */ LSLS R0, R0, 0x1D \n\
/* 080363f4 */ LSRS R0, R0, 0x1B \n\
/* 080363f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080363f8 */ LDR R0, [R0] \n\
/* 080363fa */ BL func_08002634 \n\
/* 080363fe */ LDR R1, [SP, 0x10] \n\
/* 08036400 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08036402 */ BL func_080360f8 \n\
/* 08036406 */ LDR R0, [SP, 0xC] \n\
/* 08036408 */ B branch_08036420 \n\
\n\
.ltorg \n\
 \n\
branch_0803641c: \n\
/* 0803641c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803641e */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08036420: \n\
/* 08036420 */ ADD SP, 0x14 \n\
/* 08036422 */ POP {R4-R6} \n\
/* 08036424 */ POP {R1} \n\
/* 08036426 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
