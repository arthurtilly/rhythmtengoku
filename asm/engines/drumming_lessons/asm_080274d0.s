asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080274d0 \n\
/* 080274d0 */ PUSH {R4, R5, LR} \n\
/* 080274d2 */ SUB SP, 0xC \n\
/* 080274d4 */ LDR R0, =gCurrentEngineData \n\
/* 080274d6 */ LDR R4, [R0] \n\
/* 080274d8 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 080274da */ LSLS R0, R0, 0x2 \n\
/* 080274dc */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080274de */ LDR R5, =gSpriteHandler \n\
/* 080274e0 */ LDR R0, [R5] \n\
/* 080274e2 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080274e4 */ LDRSH R1, [R4, R2] \n\
/* 080274e6 */ LDR R2, =anim_drum_teacher_use_splash \n\
/* 080274e8 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080274ea */ STR R3, [SP] \n\
/* 080274ec */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080274ee */ STR R3, [SP, 0x4] \n\
/* 080274f0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080274f2 */ STR R3, [SP, 0x8] \n\
/* 080274f4 */ BL sprite_set_anim \n\
/* 080274f8 */ LDR R0, [R5] \n\
/* 080274fa */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 080274fc */ LDRSH R1, [R4, R2] \n\
/* 080274fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027500 */ BL sprite_set_anim_cel \n\
/* 08027504 */ ADD SP, 0xC \n\
/* 08027506 */ POP {R4, R5} \n\
/* 08027508 */ POP {R0} \n\
/* 0802750a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
