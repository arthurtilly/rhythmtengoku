asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d414 \n\
/* 0803d414 */ PUSH {R4, R5, LR} \n\
/* 0803d416 */ SUB SP, 0xC \n\
/* 0803d418 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d41a */ LDR R5, =gCurrentEngineData \n\
/* 0803d41c */ LDR R0, [R5] \n\
/* 0803d41e */ LDRH R4, [R0, 0x18] \n\
/* 0803d420 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803d422 */ BNE branch_0803d44a \n\
/* 0803d424 */ STRH R4, [R0, 0x1C] \n\
/* 0803d426 */ LDR R0, =space_gramps_anim_map \n\
/* 0803d428 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0803d42a */ LDRB R0, [R0] \n\
/* 0803d42c */ BL space_dance_get_anim \n\
/* 0803d430 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d432 */ LDR R0, =gSpriteHandler \n\
/* 0803d434 */ LDR R0, [R0] \n\
/* 0803d436 */ LDR R1, [R5] \n\
/* 0803d438 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d43a */ LDRSH R1, [R1, R3] \n\
/* 0803d43c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d43e */ STR R3, [SP] \n\
/* 0803d440 */ STR R4, [SP, 0x4] \n\
/* 0803d442 */ STR R4, [SP, 0x8] \n\
/* 0803d444 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d446 */ BL sprite_set_anim \n\
 \n\
branch_0803d44a: \n\
/* 0803d44a */ ADD SP, 0xC \n\
/* 0803d44c */ POP {R4, R5} \n\
/* 0803d44e */ POP {R0} \n\
/* 0803d450 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
