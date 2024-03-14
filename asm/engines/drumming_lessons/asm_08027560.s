asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027560 \n\
/* 08027560 */ PUSH {R4, R5, LR} \n\
/* 08027562 */ SUB SP, 0xC \n\
/* 08027564 */ LDR R0, =gCurrentEngineData \n\
/* 08027566 */ LDR R4, [R0] \n\
/* 08027568 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 0802756a */ LSLS R0, R0, 0x2 \n\
/* 0802756c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802756e */ LDR R5, =gSpriteHandler \n\
/* 08027570 */ LDR R0, [R5] \n\
/* 08027572 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08027574 */ LDRSH R1, [R4, R2] \n\
/* 08027576 */ LDR R2, =anim_drum_teacher_snare_roll \n\
/* 08027578 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802757a */ STR R3, [SP] \n\
/* 0802757c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802757e */ STR R3, [SP, 0x4] \n\
/* 08027580 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08027582 */ STR R3, [SP, 0x8] \n\
/* 08027584 */ BL sprite_set_anim \n\
/* 08027588 */ LDR R0, [R5] \n\
/* 0802758a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802758c */ LDRSH R1, [R4, R2] \n\
/* 0802758e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027590 */ BL sprite_set_anim_cel \n\
/* 08027594 */ ADD SP, 0xC \n\
/* 08027596 */ POP {R4, R5} \n\
/* 08027598 */ POP {R0} \n\
/* 0802759a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
