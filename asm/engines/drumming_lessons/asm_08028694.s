asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028694 \n\
/* 08028694 */ PUSH {R4, R5, LR} \n\
/* 08028696 */ SUB SP, 0xC \n\
/* 08028698 */ LDR R0, =gCurrentEngineData \n\
/* 0802869a */ LDR R4, [R0] \n\
/* 0802869c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802869e */ LSLS R0, R0, 0x2 \n\
/* 080286a0 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080286a2 */ LDR R5, =gSpriteHandler \n\
/* 080286a4 */ LDR R0, [R5] \n\
/* 080286a6 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080286a8 */ LDRSH R1, [R4, R2] \n\
/* 080286aa */ LDR R2, =anim_drum_student_snare_roll \n\
/* 080286ac */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080286ae */ STR R3, [SP] \n\
/* 080286b0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080286b2 */ STR R3, [SP, 0x4] \n\
/* 080286b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080286b6 */ STR R3, [SP, 0x8] \n\
/* 080286b8 */ BL sprite_set_anim \n\
/* 080286bc */ LDR R0, [R5] \n\
/* 080286be */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080286c0 */ LDRSH R1, [R4, R2] \n\
/* 080286c2 */ MOVS R2, 0x66 @ Set R2 to 0x66 \n\
/* 080286c4 */ MOVS R3, 0x5A @ Set R3 to 0x5A \n\
/* 080286c6 */ BL sprite_set_x_y \n\
/* 080286ca */ MOVS R0, 0x66 @ Set R0 to 0x66 \n\
/* 080286cc */ STRH R0, [R4, 0x26] \n\
/* 080286ce */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 080286d0 */ STRH R0, [R4, 0x28] \n\
/* 080286d2 */ LDR R0, [R5] \n\
/* 080286d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080286d6 */ LDRSH R1, [R4, R2] \n\
/* 080286d8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080286da */ BL sprite_set_anim_cel \n\
/* 080286de */ ADD SP, 0xC \n\
/* 080286e0 */ POP {R4, R5} \n\
/* 080286e2 */ POP {R0} \n\
/* 080286e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
