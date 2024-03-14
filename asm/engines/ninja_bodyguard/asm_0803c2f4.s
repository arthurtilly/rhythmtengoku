asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c2f4 \n\
/* 0803c2f4 */ PUSH {R4-R6, LR} \n\
/* 0803c2f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c2f8 */ BL scene_hide_bg_layer \n\
/* 0803c2fc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c2fe */ BL scene_hide_bg_layer \n\
/* 0803c302 */ LDR R0, =gSpriteHandler \n\
/* 0803c304 */ LDR R0, [R0] \n\
/* 0803c306 */ LDR R1, =gCurrentEngineData \n\
/* 0803c308 */ LDR R1, [R1] \n\
/* 0803c30a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803c30c */ LDRSH R1, [R1, R2] \n\
/* 0803c30e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c310 */ BL sprite_set_visible \n\
/* 0803c314 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803c316: \n\
/* 0803c316 */ LDR R0, =gSpriteHandler \n\
/* 0803c318 */ LDR R0, [R0] \n\
/* 0803c31a */ LDR R6, =gCurrentEngineData \n\
/* 0803c31c */ LDR R1, [R6] \n\
/* 0803c31e */ LSLS R2, R4, 0x1 \n\
/* 0803c320 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 0803c322 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c324 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c326 */ LDRSH R1, [R1, R2] \n\
/* 0803c328 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c32a */ BL sprite_set_visible \n\
/* 0803c32e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c330 */ CMP R4, 0xF @ Compare R4 and 0xF \n\
/* 0803c332 */ BLS branch_0803c316 \n\
/* 0803c334 */ LDR R1, [R6] \n\
/* 0803c336 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c338 */ STRH R0, [R1, 0x28] \n\
/* 0803c33a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803c33c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803c33e: \n\
/* 0803c33e */ LDR R0, [R6] \n\
/* 0803c340 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0803c342 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0803c344 */ LDR R0, [R0] \n\
/* 0803c346 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c348 */ BL affine_sprite_set_visible \n\
/* 0803c34c */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
/* 0803c34e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c350 */ CMP R4, 0x17 @ Compare R4 and 0x17 \n\
/* 0803c352 */ BLS branch_0803c33e \n\
/* 0803c354 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c356 */ LDR R5, =gCurrentEngineData \n\
/* 0803c358 */ LDR R1, [R5] \n\
/* 0803c35a */ STRH R0, [R1, 0x28] \n\
/* 0803c35c */ LDR R4, =gSpriteHandler \n\
/* 0803c35e */ LDR R0, [R4] \n\
/* 0803c360 */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0803c362 */ LSLS R2, R2, 0x2 \n\
/* 0803c364 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c366 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c368 */ LDRSH R1, [R1, R2] \n\
/* 0803c36a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c36c */ BL sprite_set_visible \n\
/* 0803c370 */ LDR R0, [R4] \n\
/* 0803c372 */ LDR R1, [R5] \n\
/* 0803c374 */ LDR R2, =0x2d2 \n\
/* 0803c376 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c378 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c37a */ LDRSH R1, [R1, R2] \n\
/* 0803c37c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c37e */ BL sprite_set_visible \n\
/* 0803c382 */ LDR R0, [R4] \n\
/* 0803c384 */ LDR R1, [R5] \n\
/* 0803c386 */ MOVS R2, 0xB5 @ Set R2 to 0xB5 \n\
/* 0803c388 */ LSLS R2, R2, 0x2 \n\
/* 0803c38a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c38c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c38e */ LDRSH R1, [R1, R2] \n\
/* 0803c390 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c392 */ BL sprite_set_visible \n\
/* 0803c396 */ LDR R0, [R4] \n\
/* 0803c398 */ LDR R1, [R5] \n\
/* 0803c39a */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803c39c */ LSLS R2, R2, 0x2 \n\
/* 0803c39e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c3a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c3a2 */ LDRSH R1, [R1, R2] \n\
/* 0803c3a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c3a6 */ BL sprite_set_visible \n\
/* 0803c3aa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c3ac */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c3ae */ BL gameplay_set_input_buttons \n\
/* 0803c3b2 */ POP {R4-R6} \n\
/* 0803c3b4 */ POP {R0} \n\
/* 0803c3b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
