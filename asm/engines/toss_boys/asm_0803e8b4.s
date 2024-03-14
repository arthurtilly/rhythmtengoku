asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e8b4 \n\
/* 0803e8b4 */ PUSH {R4, LR} \n\
/* 0803e8b6 */ SUB SP, 0xC \n\
/* 0803e8b8 */ LDR R0, =gCurrentEngineData \n\
/* 0803e8ba */ LDR R1, [R0] \n\
/* 0803e8bc */ MOVS R0, 0xE7 @ Set R0 to 0xE7 \n\
/* 0803e8be */ LSLS R0, R0, 0x2 \n\
/* 0803e8c0 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0803e8c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e8c4 */ LDRSH R0, [R2, R3] \n\
/* 0803e8c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e8c8 */ BLT branch_0803e8ee \n\
/* 0803e8ca */ LDR R3, =0x39e \n\
/* 0803e8cc */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803e8ce */ LDRH R4, [R0] \n\
/* 0803e8d0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803e8d2 */ BNE branch_0803e8ee \n\
/* 0803e8d4 */ LDR R0, =gSpriteHandler \n\
/* 0803e8d6 */ LDR R0, [R0] \n\
/* 0803e8d8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e8da */ LDRSH R1, [R2, R3] \n\
/* 0803e8dc */ LDR R2, =anim_toss_remix_5_soshi_strum_pop \n\
/* 0803e8de */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e8e0 */ STR R3, [SP] \n\
/* 0803e8e2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e8e4 */ STR R3, [SP, 0x4] \n\
/* 0803e8e6 */ STR R4, [SP, 0x8] \n\
/* 0803e8e8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e8ea */ BL sprite_set_anim \n\
 \n\
branch_0803e8ee: \n\
/* 0803e8ee */ ADD SP, 0xC \n\
/* 0803e8f0 */ POP {R4} \n\
/* 0803e8f2 */ POP {R0} \n\
/* 0803e8f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
