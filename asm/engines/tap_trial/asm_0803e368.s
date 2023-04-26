asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e368 \n\
/* 0803e368 */ PUSH {R4-R7, LR} \n\
/* 0803e36a */ LDR R5, =gCurrentEngineData \n\
/* 0803e36c */ LDR R2, [R5] \n\
/* 0803e36e */ MOVS R4, 0xDE @ Set R4 to 0xDE \n\
/* 0803e370 */ LSLS R4, R4, 0x2 \n\
/* 0803e372 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0803e374 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 0803e376 */ LSLS R3, R3, 0x2 \n\
/* 0803e378 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803e37a */ LDR R0, [R0] \n\
/* 0803e37c */ LDR R1, [R1] \n\
/* 0803e37e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e380 */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 0803e382 */ LSLS R1, R1, 0x2 \n\
/* 0803e384 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0803e386 */ LDR R2, [R2] \n\
/* 0803e388 */ NEGS R1, R2 @ Set R1 to -R2 \n\
/* 0803e38a */ BL clamp_int32 \n\
/* 0803e38e */ LDR R2, [R5] \n\
/* 0803e390 */ ADDS R4, R2, R4 @ Set R4 to R2 + R4 \n\
/* 0803e392 */ STR R0, [R4] \n\
/* 0803e394 */ MOVS R1, 0xDD @ Set R1 to 0xDD \n\
/* 0803e396 */ LSLS R1, R1, 0x2 \n\
/* 0803e398 */ ADDS R3, R2, R1 @ Set R3 to R2 + R1 \n\
/* 0803e39a */ LDR R1, [R3] \n\
/* 0803e39c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803e39e */ STR R1, [R3] \n\
/* 0803e3a0 */ LDR R6, =D_03004b10 \n\
/* 0803e3a2 */ ASRS R1, R1, 0x8 \n\
/* 0803e3a4 */ STRH R1, [R6, 0xC] \n\
/* 0803e3a6 */ LDR R0, [R3] \n\
/* 0803e3a8 */ ASRS R0, R0, 0x8 \n\
/* 0803e3aa */ STRH R0, [R6, 0x18] \n\
/* 0803e3ac */ MOVS R4, 0xE1 @ Set R4 to 0xE1 \n\
/* 0803e3ae */ LSLS R4, R4, 0x2 \n\
/* 0803e3b0 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 0803e3b2 */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 0803e3b4 */ LSLS R3, R3, 0x2 \n\
/* 0803e3b6 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803e3b8 */ LDR R0, [R0] \n\
/* 0803e3ba */ LDR R1, [R1] \n\
/* 0803e3bc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e3be */ MOVS R7, 0xE4 @ Set R7 to 0xE4 \n\
/* 0803e3c0 */ LSLS R7, R7, 0x2 \n\
/* 0803e3c2 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 0803e3c4 */ LDR R2, [R2] \n\
/* 0803e3c6 */ NEGS R1, R2 @ Set R1 to -R2 \n\
/* 0803e3c8 */ BL clamp_int32 \n\
/* 0803e3cc */ LDR R5, [R5] \n\
/* 0803e3ce */ ADDS R4, R5, R4 @ Set R4 to R5 + R4 \n\
/* 0803e3d0 */ STR R0, [R4] \n\
/* 0803e3d2 */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 0803e3d4 */ LSLS R1, R1, 0x2 \n\
/* 0803e3d6 */ ADDS R2, R5, R1 @ Set R2 to R5 + R1 \n\
/* 0803e3d8 */ LDR R1, [R2] \n\
/* 0803e3da */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803e3dc */ STR R1, [R2] \n\
/* 0803e3de */ ASRS R1, R1, 0x8 \n\
/* 0803e3e0 */ STRH R1, [R6, 0xE] \n\
/* 0803e3e2 */ LDR R0, [R2] \n\
/* 0803e3e4 */ ASRS R0, R0, 0x8 \n\
/* 0803e3e6 */ STRH R0, [R6, 0x1A] \n\
/* 0803e3e8 */ LDR R0, [R4] \n\
/* 0803e3ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e3ec */ BGE branch_0803e3f0 \n\
/* 0803e3ee */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0803e3f0: \n\
/* 0803e3f0 */ LSLS R4, R0, 0x4 \n\
/* 0803e3f2 */ ADDS R0, R5, R7 @ Set R0 to R5 + R7 \n\
/* 0803e3f4 */ LDR R1, [R0] \n\
/* 0803e3f6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803e3f8 */ BGE branch_0803e3fc \n\
/* 0803e3fa */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0803e3fc: \n\
/* 0803e3fc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803e3fe */ BL __divsi3 \n\
/* 0803e402 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0803e404 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803e406 */ LSLS R1, R1, 0x8 \n\
/* 0803e408 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0803e40a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803e40c */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 0803e40e */ STRH R1, [R0] \n\
/* 0803e410 */ POP {R4-R7} \n\
/* 0803e412 */ POP {R0} \n\
/* 0803e414 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
