asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f9a0 \n\
/* 0803f9a0 */ PUSH {R4-R7, LR} \n\
/* 0803f9a2 */ SUB SP, 0xC \n\
/* 0803f9a4 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803f9a6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803f9a8 */ LDR R1, =gCurrentEngineData \n\
/* 0803f9aa */ LDR R2, [R1] \n\
/* 0803f9ac */ LDR R3, =0x35d \n\
/* 0803f9ae */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0803f9b0 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0803f9b2 */ LDRB R3, [R0] \n\
/* 0803f9b4 */ MOVS R5, 0xDF @ Set R5 to 0xDF \n\
/* 0803f9b6 */ LSLS R5, R5, 0x2 \n\
/* 0803f9b8 */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 0803f9ba */ LDRB R0, [R0] \n\
/* 0803f9bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f9be */ BEQ branch_0803f9d4 \n\
/* 0803f9c0 */ LDR R7, =0x396 \n\
/* 0803f9c2 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0803f9c4 */ LDRH R0, [R0] \n\
/* 0803f9c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f9c8 */ BNE branch_0803f9d4 \n\
/* 0803f9ca */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
/* 0803f9cc */ ADDS R0, R2, R5 @ Set R0 to R2 + R5 \n\
/* 0803f9ce */ LDRB R0, [R0] \n\
/* 0803f9d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f9d2 */ BEQ branch_0803f9d6 \n\
 \n\
branch_0803f9d4: \n\
/* 0803f9d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0803f9d6: \n\
/* 0803f9d6 */ LDR R0, [R1] \n\
/* 0803f9d8 */ MOVS R7, 0xD8 @ Set R7 to 0xD8 \n\
/* 0803f9da */ LSLS R7, R7, 0x2 \n\
/* 0803f9dc */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0803f9de */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0803f9e0 */ LDRB R0, [R0] \n\
/* 0803f9e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f9e4 */ BEQ branch_0803f9fc \n\
/* 0803f9e6 */ LDR R1, =toss_boys_barely_anim_ids \n\
/* 0803f9e8 */ B branch_0803f9fe \n\
\n\
.ltorg \n\
 \n\
branch_0803f9fc: \n\
/* 0803f9fc */ LDR R1, =toss_boys_hit_anim_ids \n\
 \n\
branch_0803f9fe: \n\
/* 0803f9fe */ LSLS R0, R3, 0x1 \n\
/* 0803fa00 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803fa02 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0803fa04 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803fa06 */ LDRB R0, [R0] \n\
/* 0803fa08 */ LSLS R0, R0, 0x18 \n\
/* 0803fa0a */ ASRS R0, R0, 0x18 \n\
/* 0803fa0c */ BL toss_boys_get_anim \n\
/* 0803fa10 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803fa12 */ LDR R0, =gSpriteHandler \n\
/* 0803fa14 */ LDR R0, [R0] \n\
/* 0803fa16 */ LDR R5, =gCurrentEngineData \n\
/* 0803fa18 */ LDR R1, [R5] \n\
/* 0803fa1a */ LSLS R3, R6, 0x1 \n\
/* 0803fa1c */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 0803fa1e */ LSLS R7, R7, 0x2 \n\
/* 0803fa20 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0803fa22 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803fa24 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fa26 */ LDRSH R1, [R1, R3] \n\
/* 0803fa28 */ LSLS R3, R4, 0x18 \n\
/* 0803fa2a */ ASRS R3, R3, 0x18 \n\
/* 0803fa2c */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803fa2e */ STR R4, [SP] \n\
/* 0803fa30 */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0803fa32 */ STR R4, [SP, 0x4] \n\
/* 0803fa34 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803fa36 */ STR R4, [SP, 0x8] \n\
/* 0803fa38 */ BL sprite_set_anim \n\
/* 0803fa3c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803fa3e */ BL ticks_to_frames \n\
/* 0803fa42 */ LDR R1, [R5] \n\
/* 0803fa44 */ LDR R5, =0x35a \n\
/* 0803fa46 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803fa48 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0803fa4a */ STRB R0, [R1] \n\
/* 0803fa4c */ ADD SP, 0xC \n\
/* 0803fa4e */ POP {R4-R7} \n\
/* 0803fa50 */ POP {R0} \n\
/* 0803fa52 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
