asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028444 \n\
/* 08028444 */ PUSH {R4, R5, LR} \n\
/* 08028446 */ SUB SP, 0xC \n\
/* 08028448 */ LDR R0, =gCurrentEngineData \n\
/* 0802844a */ LDR R4, [R0] \n\
/* 0802844c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802844e */ LSLS R0, R0, 0x2 \n\
/* 08028450 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028452 */ LDR R5, =gSpriteHandler \n\
/* 08028454 */ LDR R0, [R5] \n\
/* 08028456 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028458 */ LDRSH R1, [R4, R2] \n\
/* 0802845a */ LDR R2, =anim_drum_student_use_snare_l \n\
/* 0802845c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802845e */ STR R3, [SP] \n\
/* 08028460 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08028462 */ STR R3, [SP, 0x4] \n\
/* 08028464 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028466 */ STR R3, [SP, 0x8] \n\
/* 08028468 */ BL sprite_set_anim \n\
/* 0802846c */ LDR R0, [R5] \n\
/* 0802846e */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028470 */ LDRSH R1, [R4, R2] \n\
/* 08028472 */ MOVS R2, 0x66 @ Set R2 to 0x66 \n\
/* 08028474 */ MOVS R3, 0x5A @ Set R3 to 0x5A \n\
/* 08028476 */ BL sprite_set_x_y \n\
/* 0802847a */ LDR R0, [R5] \n\
/* 0802847c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802847e */ LDRSH R1, [R4, R2] \n\
/* 08028480 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028482 */ BL sprite_set_anim_cel \n\
/* 08028486 */ MOVS R0, 0x66 @ Set R0 to 0x66 \n\
/* 08028488 */ STRH R0, [R4, 0x26] \n\
/* 0802848a */ MOVS R0, 0x5A @ Set R0 to 0x5A \n\
/* 0802848c */ STRH R0, [R4, 0x28] \n\
/* 0802848e */ ADD SP, 0xC \n\
/* 08028490 */ POP {R4, R5} \n\
/* 08028492 */ POP {R0} \n\
/* 08028494 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
