asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027518 \n\
/* 08027518 */ PUSH {R4, R5, LR} \n\
/* 0802751a */ SUB SP, 0xC \n\
/* 0802751c */ LDR R0, =gCurrentEngineData \n\
/* 0802751e */ LDR R4, [R0] \n\
/* 08027520 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 08027522 */ LSLS R0, R0, 0x2 \n\
/* 08027524 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08027526 */ LDR R5, =gSpriteHandler \n\
/* 08027528 */ LDR R0, [R5] \n\
/* 0802752a */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0802752c */ LDRSH R1, [R4, R2] \n\
/* 0802752e */ LDR R2, =anim_drum_teacher_use_crash \n\
/* 08027530 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08027532 */ STR R3, [SP] \n\
/* 08027534 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08027536 */ STR R3, [SP, 0x4] \n\
/* 08027538 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802753a */ STR R3, [SP, 0x8] \n\
/* 0802753c */ BL sprite_set_anim \n\
/* 08027540 */ LDR R0, [R5] \n\
/* 08027542 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08027544 */ LDRSH R1, [R4, R2] \n\
/* 08027546 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027548 */ BL sprite_set_anim_cel \n\
/* 0802754c */ ADD SP, 0xC \n\
/* 0802754e */ POP {R4, R5} \n\
/* 08027550 */ POP {R0} \n\
/* 08027552 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
