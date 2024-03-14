asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a350 \n\
/* 0803a350 */ PUSH {R4, R5, LR} \n\
/* 0803a352 */ SUB SP, 0xC \n\
/* 0803a354 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803a356 */ LDR R5, =gCurrentEngineData \n\
/* 0803a358 */ LDR R1, [R5] \n\
/* 0803a35a */ LDRB R0, [R1, 0x10] \n\
/* 0803a35c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a35e */ BEQ branch_0803a3a8 \n\
/* 0803a360 */ LDR R0, [R1, 0x4] \n\
/* 0803a362 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0803a364 */ LDRSH R1, [R1, R2] \n\
/* 0803a366 */ BL delete_bmp_font_obj_text_anim \n\
/* 0803a36a */ LDR R0, [R5] \n\
/* 0803a36c */ LDR R0, [R0, 0x4] \n\
/* 0803a36e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803a370 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a372 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0803a374 */ BL bmp_font_obj_print_c \n\
/* 0803a378 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803a37a */ LDR R4, =gSpriteHandler \n\
/* 0803a37c */ LDR R0, [R4] \n\
/* 0803a37e */ LDR R1, [R5] \n\
/* 0803a380 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0803a382 */ LDRSH R1, [R1, R3] \n\
/* 0803a384 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803a386 */ STR R3, [SP] \n\
/* 0803a388 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a38a */ STR R3, [SP, 0x4] \n\
/* 0803a38c */ STR R3, [SP, 0x8] \n\
/* 0803a38e */ BL sprite_set_anim \n\
/* 0803a392 */ LDR R0, [R4] \n\
/* 0803a394 */ LDR R1, [R5] \n\
/* 0803a396 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0803a398 */ LDRSH R1, [R1, R2] \n\
/* 0803a39a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a39c */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0803a39e */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803a3a0 */ STR R3, [SP] \n\
/* 0803a3a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a3a4 */ BL sprite_set_playback \n\
 \n\
branch_0803a3a8: \n\
/* 0803a3a8 */ ADD SP, 0xC \n\
/* 0803a3aa */ POP {R4, R5} \n\
/* 0803a3ac */ POP {R0} \n\
/* 0803a3ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
