asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f3b0 \n\
/* 0803f3b0 */ PUSH {R4, R5, LR} \n\
/* 0803f3b2 */ LDR R4, =gCurrentEngineData \n\
/* 0803f3b4 */ LDR R1, [R4] \n\
/* 0803f3b6 */ MOVS R5, 0xDC @ Set R5 to 0xDC \n\
/* 0803f3b8 */ LSLS R5, R5, 0x2 \n\
/* 0803f3ba */ ADDS R2, R1, R5 @ Set R2 to R1 + R5 \n\
/* 0803f3bc */ LDRB R2, [R2] \n\
/* 0803f3be */ LDR R3, =0x371 \n\
/* 0803f3c0 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803f3c2 */ STRB R2, [R1] \n\
/* 0803f3c4 */ LDR R2, [R4] \n\
/* 0803f3c6 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0803f3c8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f3ca */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0803f3cc */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0803f3ce */ STRB R1, [R2] \n\
/* 0803f3d0 */ LSRS R0, R0, 0x2 \n\
/* 0803f3d2 */ LDR R3, [R4] \n\
/* 0803f3d4 */ LDR R4, =0x3ff \n\
/* 0803f3d6 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0803f3d8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f3da */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0803f3dc */ SUBS R4, 0x8B @ Subtract 0x8B from R4 \n\
/* 0803f3de */ ADDS R2, R3, R4 @ Set R2 to R3 + R4 \n\
/* 0803f3e0 */ STRH R1, [R2] \n\
/* 0803f3e2 */ LSRS R0, R0, 0xA \n\
/* 0803f3e4 */ LDR R1, =0x372 \n\
/* 0803f3e6 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 0803f3e8 */ STRH R0, [R3] \n\
/* 0803f3ea */ POP {R4, R5} \n\
/* 0803f3ec */ POP {R0} \n\
/* 0803f3ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
