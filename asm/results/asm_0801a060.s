asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a060 \n\
/* 0801a060 */ PUSH {R4-R6, LR} \n\
/* 0801a062 */ LDR R6, =D_089d7980 \n\
/* 0801a064 */ LDR R1, [R6] \n\
/* 0801a066 */ MOVS R2, 0x81 @ Set R2 to 0x81 \n\
/* 0801a068 */ LSLS R2, R2, 0x2 \n\
/* 0801a06a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801a06c */ LDR R5, [R0] \n\
/* 0801a06e */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 0801a070 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801a072 */ LDR R0, [R0] \n\
/* 0801a074 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a076 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801a078 */ BL func_080087d4 \n\
/* 0801a07c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801a07e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801a080 */ BLE branch_0801a0a6 \n\
/* 0801a082 */ LSLS R0, R4, 0x4 \n\
/* 0801a084 */ SUBS R0, R4, R0 @ Set R0 to R4 - R0 \n\
/* 0801a086 */ LSLS R0, R0, 0x1 \n\
/* 0801a088 */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0801a08a */ BL __divsi3 \n\
/* 0801a08e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a090 */ LDR R0, [R6] \n\
/* 0801a092 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 0801a094 */ LDRH R2, [R0] \n\
/* 0801a096 */ LSLS R0, R2, 0x2 \n\
/* 0801a098 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801a09a */ LSLS R0, R0, 0x1 \n\
/* 0801a09c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801a09e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a0a0 */ BL func_080087d4 \n\
/* 0801a0a4 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
 \n\
branch_0801a0a6: \n\
/* 0801a0a6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801a0a8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a0aa */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801a0ac */ BL func_080087d4 \n\
/* 0801a0b0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801a0b2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801a0b4 */ MULS R2, R4 @ Multiply R2 by R4 \n\
/* 0801a0b6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801a0b8 */ MULS R1, R5 @ Multiply R1 by R5 \n\
/* 0801a0ba */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801a0bc */ LSLS R0, R0, 0x9 \n\
/* 0801a0be */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801a0c0 */ BLS branch_0801a0ca \n\
 \n\
branch_0801a0c2: \n\
/* 0801a0c2 */ LSRS R1, R1, 0x1 \n\
/* 0801a0c4 */ LSRS R2, R2, 0x1 \n\
/* 0801a0c6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801a0c8 */ BHI branch_0801a0c2 \n\
 \n\
branch_0801a0ca: \n\
/* 0801a0ca */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801a0cc */ BNE branch_0801a0d8 \n\
/* 0801a0ce */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a0d0 */ B branch_0801a0e6 \n\
\n\
.ltorg \n\
 \n\
branch_0801a0d8: \n\
/* 0801a0d8 */ LSLS R0, R2, 0x5 \n\
/* 0801a0da */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0801a0dc */ LSLS R0, R0, 0x2 \n\
/* 0801a0de */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801a0e0 */ LSLS R0, R0, 0x3 \n\
/* 0801a0e2 */ BL __udivsi3 \n\
 \n\
branch_0801a0e6: \n\
/* 0801a0e6 */ POP {R4-R6} \n\
/* 0801a0e8 */ POP {R1} \n\
/* 0801a0ea */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
