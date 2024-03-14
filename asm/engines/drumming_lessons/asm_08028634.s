asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028634 \n\
/* 08028634 */ PUSH {R4, R5, LR} \n\
/* 08028636 */ SUB SP, 0xC \n\
/* 08028638 */ LDR R0, =gCurrentEngineData \n\
/* 0802863a */ LDR R4, [R0] \n\
/* 0802863c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802863e */ LSLS R0, R0, 0x2 \n\
/* 08028640 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028642 */ LDR R5, =gSpriteHandler \n\
/* 08028644 */ LDR R0, [R5] \n\
/* 08028646 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08028648 */ LDRSH R1, [R4, R2] \n\
/* 0802864a */ LDR R2, =anim_drum_student_use_crash \n\
/* 0802864c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802864e */ STR R3, [SP] \n\
/* 08028650 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08028652 */ STR R3, [SP, 0x4] \n\
/* 08028654 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028656 */ STR R3, [SP, 0x8] \n\
/* 08028658 */ BL sprite_set_anim \n\
/* 0802865c */ LDR R0, [R5] \n\
/* 0802865e */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08028660 */ LDRSH R1, [R4, R2] \n\
/* 08028662 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08028664 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 08028666 */ BL sprite_set_x_y \n\
/* 0802866a */ LDR R0, [R5] \n\
/* 0802866c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802866e */ LDRSH R1, [R4, R2] \n\
/* 08028670 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028672 */ BL sprite_set_anim_cel \n\
/* 08028676 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08028678 */ STRH R0, [R4, 0x2A] \n\
/* 0802867a */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0802867c */ STRH R0, [R4, 0x2C] \n\
/* 0802867e */ ADD SP, 0xC \n\
/* 08028680 */ POP {R4, R5} \n\
/* 08028682 */ POP {R0} \n\
/* 08028684 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
