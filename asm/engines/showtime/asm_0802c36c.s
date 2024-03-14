asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c36c \n\
/* 0802c36c */ PUSH {R4-R6, LR} \n\
/* 0802c36e */ LDR R6, =gCurrentEngineData \n\
/* 0802c370 */ LDR R2, [R6] \n\
/* 0802c372 */ LSLS R4, R0, 0x1 \n\
/* 0802c374 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802c376 */ LSLS R4, R4, 0x2 \n\
/* 0802c378 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c37a */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0802c37c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c37e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802c380 */ STR R1, [R0] \n\
/* 0802c382 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802c384 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802c386 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c388 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802c38a */ STR R1, [R0] \n\
/* 0802c38c */ LDR R5, =gSpriteHandler \n\
/* 0802c38e */ LDR R0, [R5] \n\
/* 0802c390 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802c392 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 0802c394 */ LDRSH R1, [R2, R3] \n\
/* 0802c396 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c398 */ BL sprite_set_anim_cel \n\
/* 0802c39c */ LDR R5, [R5] \n\
/* 0802c39e */ LDR R0, [R6] \n\
/* 0802c3a0 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c3a2 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0802c3a4 */ LDRSH R4, [R0, R1] \n\
/* 0802c3a6 */ BL get_beatscript_tempo \n\
/* 0802c3aa */ LSLS R0, R0, 0x8 \n\
/* 0802c3ac */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802c3ae */ BL __udivsi3 \n\
/* 0802c3b2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802c3b4 */ LSLS R2, R2, 0x10 \n\
/* 0802c3b6 */ LSRS R2, R2, 0x10 \n\
/* 0802c3b8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802c3ba */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802c3bc */ BL sprite_set_anim_speed \n\
/* 0802c3c0 */ POP {R4-R6} \n\
/* 0802c3c2 */ POP {R0} \n\
/* 0802c3c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
