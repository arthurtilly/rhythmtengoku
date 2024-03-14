asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f400 \n\
/* 0803f400 */ PUSH {R4-R7, LR} \n\
/* 0803f402 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803f404 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803f406 */ PUSH {R6, R7} \n\
/* 0803f408 */ SUB SP, 0xC \n\
/* 0803f40a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803f40c */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0803f40e */ LDRB R0, [R7, 0x6] \n\
/* 0803f410 */ LSLS R0, R0, 0x2 \n\
/* 0803f412 */ LDR R1, =D_089e86a8 \n\
/* 0803f414 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f416 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803f418 */ LDRB R0, [R7, 0x7] \n\
/* 0803f41a */ LSLS R0, R0, 0x2 \n\
/* 0803f41c */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 0803f41e */ LDR R0, =gCurrentEngineData \n\
/* 0803f420 */ LDR R0, [R0] \n\
/* 0803f422 */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0803f424 */ LSLS R1, R1, 0x2 \n\
/* 0803f426 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f428 */ LDR R4, [R0] \n\
/* 0803f42a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803f42c */ BLT branch_0803f43e \n\
/* 0803f42e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f430 */ BL get_task_state \n\
/* 0803f434 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f436 */ BEQ branch_0803f43e \n\
/* 0803f438 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803f43a */ BL force_cancel_task \n\
 \n\
branch_0803f43e: \n\
/* 0803f43e */ LDRH R0, [R7, 0x4] \n\
/* 0803f440 */ BL ticks_to_frames \n\
/* 0803f444 */ SUBS R1, R6, 0x5 @ Set R1 to R6 - 0x5 \n\
/* 0803f446 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803f448 */ LDR R2, =gCurrentEngineData \n\
/* 0803f44a */ LDR R1, [R2] \n\
/* 0803f44c */ LDR R3, =0x366 \n\
/* 0803f44e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f450 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0803f452 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803f454 */ LDRSH R4, [R1, R6] \n\
/* 0803f456 */ MOV R12, R4 @ Set R12 to R4 \n\
/* 0803f458 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803f45a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f45c */ LDRSH R1, [R2, R3] \n\
/* 0803f45e */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0803f460 */ LDRSH R2, [R2, R4] \n\
/* 0803f462 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803f464 */ LDRSH R3, [R5, R6] \n\
/* 0803f466 */ MOVS R6, 0x2 @ Set R6 to 0x2 \n\
/* 0803f468 */ LDRSH R4, [R5, R6] \n\
/* 0803f46a */ STR R4, [SP] \n\
/* 0803f46c */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0803f46e */ LDRSH R4, [R7, R5] \n\
/* 0803f470 */ STR R4, [SP, 0x4] \n\
/* 0803f472 */ LSLS R0, R0, 0x10 \n\
/* 0803f474 */ LSRS R0, R0, 0x10 \n\
/* 0803f476 */ STR R0, [SP, 0x8] \n\
/* 0803f478 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0803f47a */ BL scene_set_sprite_motion_sine_wave \n\
/* 0803f47e */ LDR R6, =gCurrentEngineData \n\
/* 0803f480 */ LDR R2, [R6] \n\
/* 0803f482 */ MOVS R3, 0xDE @ Set R3 to 0xDE \n\
/* 0803f484 */ LSLS R3, R3, 0x2 \n\
/* 0803f486 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0803f488 */ STR R0, [R1] \n\
/* 0803f48a */ LDR R0, =gSpriteHandler \n\
/* 0803f48c */ LDR R0, [R0] \n\
/* 0803f48e */ ADD R2, R8 @ Add R8 to R2 \n\
/* 0803f490 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803f492 */ LDRSH R1, [R2, R4] \n\
/* 0803f494 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803f496 */ BL sprite_set_visible \n\
/* 0803f49a */ LDR R2, [R6] \n\
/* 0803f49c */ LDR R3, =D_089e86bc \n\
/* 0803f49e */ LDRB R0, [R7, 0x7] \n\
/* 0803f4a0 */ LSLS R0, R0, 0x1 \n\
/* 0803f4a2 */ LDRB R1, [R7, 0x6] \n\
/* 0803f4a4 */ LSLS R1, R1, 0x3 \n\
/* 0803f4a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803f4a8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803f4aa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803f4ac */ LDRSH R0, [R0, R5] \n\
/* 0803f4ae */ LSLS R0, R0, 0x2 \n\
/* 0803f4b0 */ MOVS R6, 0xDB @ Set R6 to 0xDB \n\
/* 0803f4b2 */ LSLS R6, R6, 0x2 \n\
/* 0803f4b4 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0803f4b6 */ STRH R0, [R2] \n\
/* 0803f4b8 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0803f4ba */ LDRSH R0, [R7, R1] \n\
/* 0803f4bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f4be */ BLT branch_0803f4ca \n\
/* 0803f4c0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803f4c2 */ LSLS R1, R1, 0x1 \n\
/* 0803f4c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f4c6 */ BL play_drumtech_note \n\
 \n\
branch_0803f4ca: \n\
/* 0803f4ca */ ADD SP, 0xC \n\
/* 0803f4cc */ POP {R3, R4} \n\
/* 0803f4ce */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803f4d0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803f4d2 */ POP {R4-R7} \n\
/* 0803f4d4 */ POP {R0} \n\
/* 0803f4d6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
