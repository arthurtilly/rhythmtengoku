asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802739c \n\
/* 0802739c */ PUSH {R4, R5, LR} \n\
/* 0802739e */ SUB SP, 0xC \n\
/* 080273a0 */ LDR R0, =gCurrentEngineData \n\
/* 080273a2 */ LDR R4, [R0] \n\
/* 080273a4 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 080273a6 */ LSLS R0, R0, 0x2 \n\
/* 080273a8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080273aa */ LDR R5, =gSpriteHandler \n\
/* 080273ac */ LDR R0, [R5] \n\
/* 080273ae */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080273b0 */ LDRSH R1, [R4, R2] \n\
/* 080273b2 */ LDR R2, =anim_drum_teacher_use_snare_l \n\
/* 080273b4 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080273b6 */ STR R3, [SP] \n\
/* 080273b8 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080273ba */ STR R3, [SP, 0x4] \n\
/* 080273bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080273be */ STR R3, [SP, 0x8] \n\
/* 080273c0 */ BL sprite_set_anim \n\
/* 080273c4 */ LDR R0, [R5] \n\
/* 080273c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080273c8 */ LDRSH R1, [R4, R2] \n\
/* 080273ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080273cc */ BL sprite_set_anim_cel \n\
/* 080273d0 */ ADD SP, 0xC \n\
/* 080273d2 */ POP {R4, R5} \n\
/* 080273d4 */ POP {R0} \n\
/* 080273d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
