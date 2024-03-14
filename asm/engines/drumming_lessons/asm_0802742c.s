asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802742c \n\
/* 0802742c */ PUSH {R4, R5, LR} \n\
/* 0802742e */ SUB SP, 0xC \n\
/* 08027430 */ LDR R0, =gCurrentEngineData \n\
/* 08027432 */ LDR R4, [R0] \n\
/* 08027434 */ MOVS R0, 0xE3 @ Set R0 to 0xE3 \n\
/* 08027436 */ LSLS R0, R0, 0x2 \n\
/* 08027438 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802743a */ LDR R5, =gSpriteHandler \n\
/* 0802743c */ LDR R0, [R5] \n\
/* 0802743e */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08027440 */ LDRSH R1, [R4, R2] \n\
/* 08027442 */ LDR R2, =anim_drum_teacher_use_tom \n\
/* 08027444 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08027446 */ STR R3, [SP] \n\
/* 08027448 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802744a */ STR R3, [SP, 0x4] \n\
/* 0802744c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802744e */ STR R3, [SP, 0x8] \n\
/* 08027450 */ BL sprite_set_anim \n\
/* 08027454 */ LDR R0, [R5] \n\
/* 08027456 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08027458 */ LDRSH R1, [R4, R2] \n\
/* 0802745a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802745c */ BL sprite_set_anim_cel \n\
/* 08027460 */ ADD SP, 0xC \n\
/* 08027462 */ POP {R4, R5} \n\
/* 08027464 */ POP {R0} \n\
/* 08027466 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
