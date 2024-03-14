asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028564 \n\
/* 08028564 */ PUSH {R4-R6, LR} \n\
/* 08028566 */ SUB SP, 0xC \n\
/* 08028568 */ LDR R0, =gCurrentEngineData \n\
/* 0802856a */ LDR R4, [R0] \n\
/* 0802856c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802856e */ LSLS R0, R0, 0x2 \n\
/* 08028570 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028572 */ LDR R5, =gSpriteHandler \n\
/* 08028574 */ LDR R0, [R5] \n\
/* 08028576 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028578 */ LDRSH R1, [R4, R2] \n\
/* 0802857a */ LDR R2, =anim_drum_student_use_hihat \n\
/* 0802857c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802857e */ STR R3, [SP] \n\
/* 08028580 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08028582 */ STR R3, [SP, 0x4] \n\
/* 08028584 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08028586 */ STR R6, [SP, 0x8] \n\
/* 08028588 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802858a */ BL sprite_set_anim \n\
/* 0802858e */ LDR R0, [R5] \n\
/* 08028590 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028592 */ LDRSH R1, [R4, R2] \n\
/* 08028594 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08028596 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 08028598 */ BL sprite_set_x_y \n\
/* 0802859c */ LDR R0, [R5] \n\
/* 0802859e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080285a0 */ LDRSH R1, [R4, R2] \n\
/* 080285a2 */ STR R6, [SP] \n\
/* 080285a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080285a6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080285a8 */ BL sprite_set_playback \n\
/* 080285ac */ LDR R0, [R5] \n\
/* 080285ae */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080285b0 */ LDRSH R1, [R4, R2] \n\
/* 080285b2 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080285b4 */ BL sprite_set_anim_cel \n\
/* 080285b8 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080285ba */ STRH R0, [R4, 0x26] \n\
/* 080285bc */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 080285be */ STRH R0, [R4, 0x28] \n\
/* 080285c0 */ ADD SP, 0xC \n\
/* 080285c2 */ POP {R4-R6} \n\
/* 080285c4 */ POP {R0} \n\
/* 080285c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
