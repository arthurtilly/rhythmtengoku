asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d6c0 \n\
/* 0803d6c0 */ PUSH {R4, R5, LR} \n\
/* 0803d6c2 */ SUB SP, 0xC \n\
/* 0803d6c4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803d6c6 */ MOVS R0, 0x1B @ Set R0 to 0x1B \n\
/* 0803d6c8 */ BL space_dance_get_anim \n\
/* 0803d6cc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d6ce */ LDR R0, =gSpriteHandler \n\
/* 0803d6d0 */ LDR R0, [R0] \n\
/* 0803d6d2 */ LDR R5, =gCurrentEngineData \n\
/* 0803d6d4 */ LDR R1, [R5] \n\
/* 0803d6d6 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d6d8 */ LDRSH R1, [R1, R3] \n\
/* 0803d6da */ LSLS R4, R4, 0x18 \n\
/* 0803d6dc */ ASRS R4, R4, 0x18 \n\
/* 0803d6de */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d6e0 */ STR R3, [SP] \n\
/* 0803d6e2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d6e4 */ STR R3, [SP, 0x4] \n\
/* 0803d6e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d6e8 */ STR R3, [SP, 0x8] \n\
/* 0803d6ea */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0803d6ec */ BL sprite_set_anim \n\
/* 0803d6f0 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0803d6f2 */ BL ticks_to_frames \n\
/* 0803d6f6 */ LDR R1, [R5] \n\
/* 0803d6f8 */ STRH R0, [R1, 0x1C] \n\
/* 0803d6fa */ ADD SP, 0xC \n\
/* 0803d6fc */ POP {R4, R5} \n\
/* 0803d6fe */ POP {R0} \n\
/* 0803d700 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
