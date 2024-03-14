asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d2c0 \n\
/* 0803d2c0 */ PUSH {R4-R7, LR} \n\
/* 0803d2c2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803d2c4 */ PUSH {R7} \n\
/* 0803d2c6 */ SUB SP, 0xC \n\
/* 0803d2c8 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803d2ca */ LDR R1, =space_dancer_sounds \n\
/* 0803d2cc */ LSLS R0, R6, 0x2 \n\
/* 0803d2ce */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803d2d0 */ LDR R0, [R0] \n\
/* 0803d2d2 */ BL play_sound \n\
/* 0803d2d6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803d2d8 */ LDR R0, =space_dancer_anim_map \n\
/* 0803d2da */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0803d2dc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803d2de */ LDR R7, =gCurrentEngineData \n\
 \n\
branch_0803d2e0: \n\
/* 0803d2e0 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0803d2e2 */ BNE branch_0803d2e8 \n\
/* 0803d2e4 */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 0803d2e6 */ BLS branch_0803d320 \n\
 \n\
branch_0803d2e8: \n\
/* 0803d2e8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803d2ea */ LDRB R0, [R1] \n\
/* 0803d2ec */ BL space_dance_get_anim \n\
/* 0803d2f0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d2f2 */ LDR R0, =gSpriteHandler \n\
/* 0803d2f4 */ LDR R0, [R0] \n\
/* 0803d2f6 */ LDR R1, [R7] \n\
/* 0803d2f8 */ LSLS R4, R5, 0x1 \n\
/* 0803d2fa */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 0803d2fc */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803d2fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d300 */ LDRSH R1, [R1, R3] \n\
/* 0803d302 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d304 */ STR R3, [SP] \n\
/* 0803d306 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d308 */ STR R3, [SP, 0x4] \n\
/* 0803d30a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d30c */ STR R3, [SP, 0x8] \n\
/* 0803d30e */ BL sprite_set_anim \n\
/* 0803d312 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d314 */ BL ticks_to_frames \n\
/* 0803d318 */ LDR R1, [R7] \n\
/* 0803d31a */ ADDS R1, 0xE @ Add 0xE to R1 \n\
/* 0803d31c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803d31e */ STRH R0, [R1] \n\
 \n\
branch_0803d320: \n\
/* 0803d320 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0803d322 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0803d324 */ BLS branch_0803d2e0 \n\
/* 0803d326 */ LDR R5, =gCurrentEngineData \n\
/* 0803d328 */ LDR R1, [R5] \n\
/* 0803d32a */ LDRB R0, [R1, 0x1A] \n\
/* 0803d32c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d32e */ BEQ branch_0803d366 \n\
/* 0803d330 */ LDRH R4, [R1, 0x1C] \n\
/* 0803d332 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803d334 */ BNE branch_0803d366 \n\
/* 0803d336 */ LDR R0, =space_gramps_anim_map \n\
/* 0803d338 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0803d33a */ LDRB R0, [R0] \n\
/* 0803d33c */ BL space_dance_get_anim \n\
/* 0803d340 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d342 */ LDR R0, =gSpriteHandler \n\
/* 0803d344 */ LDR R0, [R0] \n\
/* 0803d346 */ LDR R1, [R5] \n\
/* 0803d348 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d34a */ LDRSH R1, [R1, R3] \n\
/* 0803d34c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d34e */ STR R3, [SP] \n\
/* 0803d350 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d352 */ STR R3, [SP, 0x4] \n\
/* 0803d354 */ STR R4, [SP, 0x8] \n\
/* 0803d356 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d358 */ BL sprite_set_anim \n\
/* 0803d35c */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0803d35e */ BL ticks_to_frames \n\
/* 0803d362 */ LDR R1, [R5] \n\
/* 0803d364 */ STRH R0, [R1, 0x18] \n\
 \n\
branch_0803d366: \n\
/* 0803d366 */ ADD SP, 0xC \n\
/* 0803d368 */ POP {R3} \n\
/* 0803d36a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803d36c */ POP {R4-R7} \n\
/* 0803d36e */ POP {R0} \n\
/* 0803d370 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
