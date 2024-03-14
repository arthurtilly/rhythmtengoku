asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d2bc \n\
/* 0802d2bc */ PUSH {R4-R6, LR} \n\
/* 0802d2be */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802d2c0 */ PUSH {R6} \n\
/* 0802d2c2 */ SUB SP, 0xC \n\
/* 0802d2c4 */ LDR R6, =gCurrentEngineData \n\
/* 0802d2c6 */ LDR R1, [R6] \n\
/* 0802d2c8 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802d2ca */ LSLS R0, R0, 0x1 \n\
/* 0802d2cc */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0802d2ce */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802d2d0 */ STR R0, [R2] \n\
/* 0802d2d2 */ LDR R5, =gSpriteHandler \n\
/* 0802d2d4 */ LDR R0, [R5] \n\
/* 0802d2d6 */ MOVS R4, 0xB0 @ Set R4 to 0xB0 \n\
/* 0802d2d8 */ LSLS R4, R4, 0x1 \n\
/* 0802d2da */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d2dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d2de */ LDRSH R1, [R1, R2] \n\
/* 0802d2e0 */ LDR R2, =anim_showtime_monkey_swing \n\
/* 0802d2e2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802d2e4 */ STR R3, [SP] \n\
/* 0802d2e6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802d2e8 */ STR R3, [SP, 0x4] \n\
/* 0802d2ea */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802d2ec */ STR R3, [SP, 0x8] \n\
/* 0802d2ee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d2f0 */ BL sprite_set_anim \n\
/* 0802d2f4 */ LDR R0, [R5] \n\
/* 0802d2f6 */ LDR R1, [R6] \n\
/* 0802d2f8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d2fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d2fc */ LDRSH R1, [R1, R2] \n\
/* 0802d2fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d300 */ BL sprite_set_anim_cel \n\
/* 0802d304 */ LDR R0, [R5] \n\
/* 0802d306 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d308 */ LDR R0, [R6] \n\
/* 0802d30a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d30c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802d30e */ LDRSH R4, [R0, R1] \n\
/* 0802d310 */ BL get_beatscript_tempo \n\
/* 0802d314 */ LSLS R0, R0, 0x8 \n\
/* 0802d316 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802d318 */ BL __udivsi3 \n\
/* 0802d31c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802d31e */ LSLS R2, R2, 0x10 \n\
/* 0802d320 */ LSRS R2, R2, 0x10 \n\
/* 0802d322 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802d324 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802d326 */ BL sprite_set_anim_speed \n\
/* 0802d32a */ LDR R0, [R5] \n\
/* 0802d32c */ LDR R1, [R6] \n\
/* 0802d32e */ MOVS R4, 0xB1 @ Set R4 to 0xB1 \n\
/* 0802d330 */ LSLS R4, R4, 0x1 \n\
/* 0802d332 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802d334 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d336 */ LDRSH R1, [R1, R2] \n\
/* 0802d338 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d33a */ BL sprite_set_anim_cel \n\
/* 0802d33e */ LDR R5, [R5] \n\
/* 0802d340 */ LDR R0, [R6] \n\
/* 0802d342 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d344 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802d346 */ LDRSH R4, [R0, R1] \n\
/* 0802d348 */ BL get_beatscript_tempo \n\
/* 0802d34c */ LSLS R0, R0, 0x8 \n\
/* 0802d34e */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0802d350 */ BL __udivsi3 \n\
/* 0802d354 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802d356 */ LSLS R2, R2, 0x10 \n\
/* 0802d358 */ LSRS R2, R2, 0x10 \n\
/* 0802d35a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802d35c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802d35e */ BL sprite_set_anim_speed \n\
/* 0802d362 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0802d364 */ BL ticks_to_frames \n\
/* 0802d368 */ LDR R1, [R6] \n\
/* 0802d36a */ MOVS R2, 0xB8 @ Set R2 to 0xB8 \n\
/* 0802d36c */ LSLS R2, R2, 0x1 \n\
/* 0802d36e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d370 */ STRH R0, [R1] \n\
/* 0802d372 */ ADD SP, 0xC \n\
/* 0802d374 */ POP {R3} \n\
/* 0802d376 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802d378 */ POP {R4-R6} \n\
/* 0802d37a */ POP {R0} \n\
/* 0802d37c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
