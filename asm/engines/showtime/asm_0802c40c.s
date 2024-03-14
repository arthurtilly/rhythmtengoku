asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c40c \n\
/* 0802c40c */ PUSH {R4-R7, LR} \n\
/* 0802c40e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802c410 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802c412 */ PUSH {R6, R7} \n\
/* 0802c414 */ SUB SP, 0x14 \n\
/* 0802c416 */ LDR R0, =gCurrentEngineData \n\
/* 0802c418 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802c41a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802c41c */ LDR R7, =gSpriteHandler \n\
/* 0802c41e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802c420 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802c422 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802c424 */ MOVS R6, 0x7 @ Set R6 to 0x7 \n\
 \n\
branch_0802c426: \n\
/* 0802c426 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802c428 */ LDR R0, [R2] \n\
/* 0802c42a */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802c42c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c42e */ STR R5, [R0] \n\
/* 0802c430 */ LDR R0, [R7] \n\
/* 0802c432 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802c434 */ STR R1, [SP] \n\
/* 0802c436 */ STR R5, [SP, 0x4] \n\
/* 0802c438 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802c43a */ STR R3, [SP, 0x8] \n\
/* 0802c43c */ STR R5, [SP, 0xC] \n\
/* 0802c43e */ STR R5, [SP, 0x10] \n\
/* 0802c440 */ LDR R1, =anim_showtime_penguin_beat \n\
/* 0802c442 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c444 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802c446 */ BL sprite_create \n\
/* 0802c44a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802c44c */ LDR R1, [R2] \n\
/* 0802c44e */ ADDS R2, R1, R4 @ Set R2 to R1 + R4 \n\
/* 0802c450 */ STRH R0, [R2, 0x20] \n\
/* 0802c452 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c454 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802c456 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c458 */ STR R5, [R0] \n\
/* 0802c45a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802c45c */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802c45e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802c460 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802c462 */ STR R3, [R0] \n\
/* 0802c464 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0802c466 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c468 */ STR R5, [R1] \n\
/* 0802c46a */ LDR R0, [R7] \n\
/* 0802c46c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802c46e */ LDRSH R1, [R2, R3] \n\
/* 0802c470 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802c472 */ BL sprite_set_visible \n\
/* 0802c476 */ LDR R0, [R7] \n\
/* 0802c478 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802c47a */ LDR R1, [R2] \n\
/* 0802c47c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802c47e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802c480 */ LDRSH R1, [R1, R3] \n\
/* 0802c482 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802c484 */ LSLS R2, R2, 0x1 \n\
/* 0802c486 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 0802c488 */ BL sprite_set_x_y \n\
/* 0802c48c */ ADDS R4, 0x28 @ Add 0x28 to R4 \n\
/* 0802c48e */ SUBS R6, 0x1 @ Subtract 0x1 from R6 \n\
/* 0802c490 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802c492 */ BGE branch_0802c426 \n\
/* 0802c494 */ ADD SP, 0x14 \n\
/* 0802c496 */ POP {R3, R4} \n\
/* 0802c498 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802c49a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802c49c */ POP {R4-R7} \n\
/* 0802c49e */ POP {R0} \n\
/* 0802c4a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
