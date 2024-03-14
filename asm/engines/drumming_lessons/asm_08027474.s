asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08027474 \n\
/* 08027474 */ PUSH {R4-R6, LR} \n\
/* 08027476 */ SUB SP, 0xC \n\
/* 08027478 */ LDR R0, =gCurrentEngineData \n\
/* 0802747a */ LDR R4, [R0] \n\
/* 0802747c */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 0802747e */ LSLS R0, R0, 0x2 \n\
/* 08027480 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08027482 */ LDR R5, =gSpriteHandler \n\
/* 08027484 */ LDR R0, [R5] \n\
/* 08027486 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08027488 */ LDRSH R1, [R4, R2] \n\
/* 0802748a */ LDR R2, =anim_drum_teacher_use_hihat \n\
/* 0802748c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802748e */ STR R3, [SP] \n\
/* 08027490 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08027492 */ STR R3, [SP, 0x4] \n\
/* 08027494 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08027496 */ STR R6, [SP, 0x8] \n\
/* 08027498 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802749a */ BL sprite_set_anim \n\
/* 0802749e */ LDR R0, [R5] \n\
/* 080274a0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080274a2 */ LDRSH R1, [R4, R2] \n\
/* 080274a4 */ STR R6, [SP] \n\
/* 080274a6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080274a8 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080274aa */ BL sprite_set_playback \n\
/* 080274ae */ LDR R0, [R5] \n\
/* 080274b0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080274b2 */ LDRSH R1, [R4, R2] \n\
/* 080274b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080274b6 */ BL sprite_set_anim_cel \n\
/* 080274ba */ ADD SP, 0xC \n\
/* 080274bc */ POP {R4-R6} \n\
/* 080274be */ POP {R0} \n\
/* 080274c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
