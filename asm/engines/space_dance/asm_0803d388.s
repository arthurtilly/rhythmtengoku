asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d388 \n\
/* 0803d388 */ PUSH {R4, R5, LR} \n\
/* 0803d38a */ SUB SP, 0xC \n\
/* 0803d38c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d38e */ LDR R5, =gCurrentEngineData \n\
/* 0803d390 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
 \n\
branch_0803d392: \n\
/* 0803d392 */ LDR R0, [R3] \n\
/* 0803d394 */ LSLS R1, R2, 0x1 \n\
/* 0803d396 */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 0803d398 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0803d39a */ LDRH R0, [R1] \n\
/* 0803d39c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d39e */ BEQ branch_0803d3a4 \n\
/* 0803d3a0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803d3a2 */ STRH R0, [R1] \n\
 \n\
branch_0803d3a4: \n\
/* 0803d3a4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0803d3a6 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 0803d3a8 */ BLS branch_0803d392 \n\
/* 0803d3aa */ LDR R1, [R5] \n\
/* 0803d3ac */ LDRH R0, [R1, 0x18] \n\
/* 0803d3ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d3b0 */ BEQ branch_0803d3b6 \n\
/* 0803d3b2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803d3b4 */ STRH R0, [R1, 0x18] \n\
 \n\
branch_0803d3b6: \n\
/* 0803d3b6 */ LDR R1, [R5] \n\
/* 0803d3b8 */ LDRH R0, [R1, 0x1C] \n\
/* 0803d3ba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d3bc */ BEQ branch_0803d3ea \n\
/* 0803d3be */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803d3c0 */ STRH R0, [R1, 0x1C] \n\
/* 0803d3c2 */ LSLS R0, R0, 0x10 \n\
/* 0803d3c4 */ LSRS R4, R0, 0x10 \n\
/* 0803d3c6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803d3c8 */ BNE branch_0803d3ea \n\
/* 0803d3ca */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803d3cc */ BL space_dance_get_anim \n\
/* 0803d3d0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d3d2 */ LDR R0, =gSpriteHandler \n\
/* 0803d3d4 */ LDR R0, [R0] \n\
/* 0803d3d6 */ LDR R1, [R5] \n\
/* 0803d3d8 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d3da */ LDRSH R1, [R1, R3] \n\
/* 0803d3dc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d3de */ STR R3, [SP] \n\
/* 0803d3e0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d3e2 */ STR R3, [SP, 0x4] \n\
/* 0803d3e4 */ STR R4, [SP, 0x8] \n\
/* 0803d3e6 */ BL sprite_set_anim \n\
 \n\
branch_0803d3ea: \n\
/* 0803d3ea */ ADD SP, 0xC \n\
/* 0803d3ec */ POP {R4, R5} \n\
/* 0803d3ee */ POP {R0} \n\
/* 0803d3f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
