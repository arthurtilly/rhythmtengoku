asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080273e4 \n\
/* 080273e4 */ PUSH {R4, R5, LR} \n\
/* 080273e6 */ SUB SP, 0xC \n\
/* 080273e8 */ LDR R0, =gCurrentEngineData \n\
/* 080273ea */ LDR R4, [R0] \n\
/* 080273ec */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 080273ee */ LSLS R0, R0, 0x2 \n\
/* 080273f0 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080273f2 */ LDR R5, =gSpriteHandler \n\
/* 080273f4 */ LDR R0, [R5] \n\
/* 080273f6 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 080273f8 */ LDRSH R1, [R4, R2] \n\
/* 080273fa */ LDR R2, =anim_drum_teacher_use_snare_r \n\
/* 080273fc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080273fe */ STR R3, [SP] \n\
/* 08027400 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08027402 */ STR R3, [SP, 0x4] \n\
/* 08027404 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08027406 */ STR R3, [SP, 0x8] \n\
/* 08027408 */ BL sprite_set_anim \n\
/* 0802740c */ LDR R0, [R5] \n\
/* 0802740e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027410 */ LDRSH R1, [R4, R2] \n\
/* 08027412 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027414 */ BL sprite_set_anim_cel \n\
/* 08027418 */ ADD SP, 0xC \n\
/* 0802741a */ POP {R4, R5} \n\
/* 0802741c */ POP {R0} \n\
/* 0802741e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
