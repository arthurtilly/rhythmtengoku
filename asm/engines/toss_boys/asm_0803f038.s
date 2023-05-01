asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f038 \n\
/* 0803f038 */ PUSH {R4-R7, LR} \n\
/* 0803f03a */ LDR R7, =gCurrentEngineData \n\
/* 0803f03c */ LDR R5, [R7] \n\
/* 0803f03e */ LDR R6, =0x392 \n\
/* 0803f040 */ ADDS R2, R5, R6 @ Set R2 to R5 + R6 \n\
/* 0803f042 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f044 */ LDRSH R0, [R2, R1] \n\
/* 0803f046 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803f048 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f04a */ BGE branch_0803f04e \n\
/* 0803f04c */ SUBS R3, 0x2 @ Subtract 0x2 from R3 \n\
 \n\
branch_0803f04e: \n\
/* 0803f04e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803f050 */ LDRSH R0, [R2, R1] \n\
/* 0803f052 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803f054 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0803f056 */ MOVS R0, 0xF5 @ Set R0 to 0xF5 \n\
/* 0803f058 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0803f05a */ ASRS R0, R0, 0x8 \n\
/* 0803f05c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f05e */ MULS R1, R3 @ Multiply R1 by R3 \n\
/* 0803f060 */ STRH R1, [R2] \n\
/* 0803f062 */ LSLS R1, R1, 0x10 \n\
/* 0803f064 */ ASRS R1, R1, 0x12 \n\
/* 0803f066 */ LDR R3, =gSineTable \n\
/* 0803f068 */ MOVS R0, 0xE5 @ Set R0 to 0xE5 \n\
/* 0803f06a */ LSLS R0, R0, 0x2 \n\
/* 0803f06c */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0803f06e */ LDRH R2, [R5] \n\
/* 0803f070 */ LDR R0, =0x7ff \n\
/* 0803f072 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0803f074 */ LSLS R0, R0, 0x1 \n\
/* 0803f076 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803f078 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f07a */ LDRSH R0, [R0, R3] \n\
/* 0803f07c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803f07e */ MULS R4, R0 @ Multiply R4 by R0 \n\
/* 0803f080 */ ASRS R4, R4, 0x8 \n\
/* 0803f082 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803f084 */ LSLS R0, R0, 0x1 \n\
/* 0803f086 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803f088 */ STRH R2, [R5] \n\
/* 0803f08a */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803f08c */ BL get_soundplayer_from_id \n\
/* 0803f090 */ LDR R1, [R7] \n\
/* 0803f092 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803f094 */ LDRH R1, [R1] \n\
/* 0803f096 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803f098 */ LSLS R1, R1, 0x10 \n\
/* 0803f09a */ ASRS R1, R1, 0x10 \n\
/* 0803f09c */ BL set_soundplayer_pitch \n\
/* 0803f0a0 */ POP {R4-R7} \n\
/* 0803f0a2 */ POP {R0} \n\
/* 0803f0a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
