asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c43c \n\
/* 0803c43c */ PUSH {R4-R7, LR} \n\
/* 0803c43e */ SUB SP, 0x1C \n\
/* 0803c440 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0803c442 */ BL ninja_get_anim \n\
/* 0803c446 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803c448 */ LDR R0, =gSpriteHandler \n\
/* 0803c44a */ LDR R0, [R0] \n\
/* 0803c44c */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 0803c44e */ STR R2, [SP] \n\
/* 0803c450 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0803c452 */ LSLS R2, R2, 0x7 \n\
/* 0803c454 */ STR R2, [SP, 0x4] \n\
/* 0803c456 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c458 */ STR R2, [SP, 0x8] \n\
/* 0803c45a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803c45c */ STR R2, [SP, 0xC] \n\
/* 0803c45e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803c460 */ LSLS R2, R2, 0x8 \n\
/* 0803c462 */ STR R2, [SP, 0x10] \n\
/* 0803c464 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c466 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 0803c468 */ BL sprite_create \n\
/* 0803c46c */ LDR R1, =gCurrentEngineData \n\
/* 0803c46e */ LDR R1, [R1] \n\
/* 0803c470 */ STRH R0, [R1, 0x4] \n\
/* 0803c472 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803c474: \n\
/* 0803c474 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803c476 */ BL ninja_get_anim \n\
/* 0803c47a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803c47c */ LDR R0, =gSpriteHandler \n\
/* 0803c47e */ LDR R0, [R0] \n\
/* 0803c480 */ MOVS R2, 0x4E @ Set R2 to 0x4E \n\
/* 0803c482 */ STR R2, [SP] \n\
/* 0803c484 */ LDR R2, =0x47f6 \n\
/* 0803c486 */ STR R2, [SP, 0x4] \n\
/* 0803c488 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803c48a */ STR R5, [SP, 0x8] \n\
/* 0803c48c */ STR R5, [SP, 0xC] \n\
/* 0803c48e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803c490 */ LSLS R2, R2, 0x8 \n\
/* 0803c492 */ STR R2, [SP, 0x10] \n\
/* 0803c494 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c496 */ MOVS R3, 0x85 @ Set R3 to 0x85 \n\
/* 0803c498 */ BL sprite_create \n\
/* 0803c49c */ LDR R1, =gCurrentEngineData \n\
/* 0803c49e */ LDR R3, [R1] \n\
/* 0803c4a0 */ LSLS R2, R4, 0x1 \n\
/* 0803c4a2 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803c4a4 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 0803c4a6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c4a8 */ STRH R0, [R1] \n\
/* 0803c4aa */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c4ac */ CMP R4, 0xF @ Compare R4 and 0xF \n\
/* 0803c4ae */ BLS branch_0803c474 \n\
/* 0803c4b0 */ STRH R5, [R3, 0x28] \n\
/* 0803c4b2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803c4b4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803c4b6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0803c4b8: \n\
/* 0803c4b8 */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0803c4ba */ BL ninja_get_anim \n\
/* 0803c4be */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 0803c4c0 */ LSLS R1, R1, 0x7 \n\
/* 0803c4c2 */ STR R1, [SP] \n\
/* 0803c4c4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803c4c6 */ LSLS R1, R1, 0x1 \n\
/* 0803c4c8 */ STR R1, [SP, 0x4] \n\
/* 0803c4ca */ STR R6, [SP, 0x8] \n\
/* 0803c4cc */ STR R6, [SP, 0xC] \n\
/* 0803c4ce */ STR R6, [SP, 0x10] \n\
/* 0803c4d0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803c4d2 */ LSLS R1, R1, 0x8 \n\
/* 0803c4d4 */ STR R1, [SP, 0x14] \n\
/* 0803c4d6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803c4d8 */ STR R1, [SP, 0x18] \n\
/* 0803c4da */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c4dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c4de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803c4e0 */ BL create_affine_sprite \n\
/* 0803c4e4 */ LDR R5, =gCurrentEngineData \n\
/* 0803c4e6 */ LDR R3, [R5] \n\
/* 0803c4e8 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803c4ea */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 0803c4ec */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0803c4ee */ STR R0, [R1] \n\
/* 0803c4f0 */ ADDS R7, 0x1C @ Add 0x1C to R7 \n\
/* 0803c4f2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c4f4 */ CMP R4, 0x17 @ Compare R4 and 0x17 \n\
/* 0803c4f6 */ BLS branch_0803c4b8 \n\
/* 0803c4f8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803c4fa */ MOVS R2, 0xB3 @ Set R2 to 0xB3 \n\
/* 0803c4fc */ LSLS R2, R2, 0x2 \n\
/* 0803c4fe */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0803c500 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c502 */ STRH R1, [R0] \n\
/* 0803c504 */ LDR R1, =0x2ce \n\
/* 0803c506 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803c508 */ STRB R2, [R0] \n\
/* 0803c50a */ LDR R0, [R5] \n\
/* 0803c50c */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0803c50e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803c510 */ STRB R2, [R0] \n\
/* 0803c512 */ ADD SP, 0x1C \n\
/* 0803c514 */ POP {R4-R7} \n\
/* 0803c516 */ POP {R0} \n\
/* 0803c518 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
