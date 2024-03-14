asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080372e8 \n\
/* 080372e8 */ PUSH {R4-R6, LR} \n\
/* 080372ea */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080372ec */ PUSH {R6} \n\
/* 080372ee */ SUB SP, 0x1C \n\
/* 080372f0 */ LDR R0, =gSpriteHandler \n\
/* 080372f2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080372f4 */ LDR R0, [R0] \n\
/* 080372f6 */ LDR R1, =anim_quiz_show_clock \n\
/* 080372f8 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 080372fa */ STR R2, [SP] \n\
/* 080372fc */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 080372fe */ LSLS R2, R2, 0x8 \n\
/* 08037300 */ STR R2, [SP, 0x4] \n\
/* 08037302 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08037304 */ STR R4, [SP, 0x8] \n\
/* 08037306 */ STR R4, [SP, 0xC] \n\
/* 08037308 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0803730a */ LSLS R6, R6, 0x8 \n\
/* 0803730c */ STR R6, [SP, 0x10] \n\
/* 0803730e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037310 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08037312 */ BL sprite_create \n\
/* 08037316 */ LDR R5, =gCurrentEngineData \n\
/* 08037318 */ LDR R1, [R5] \n\
/* 0803731a */ STRH R0, [R1, 0x30] \n\
/* 0803731c */ LDR R0, =anim_quiz_show_clock_hand \n\
/* 0803731e */ LDR R1, =0x87ff \n\
/* 08037320 */ STR R1, [SP] \n\
/* 08037322 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08037324 */ LSLS R1, R1, 0x1 \n\
/* 08037326 */ STR R1, [SP, 0x4] \n\
/* 08037328 */ STR R4, [SP, 0x8] \n\
/* 0803732a */ STR R4, [SP, 0xC] \n\
/* 0803732c */ STR R4, [SP, 0x10] \n\
/* 0803732e */ STR R6, [SP, 0x14] \n\
/* 08037330 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08037332 */ STR R1, [SP, 0x18] \n\
/* 08037334 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08037336 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08037338 */ MOVS R3, 0x4C @ Set R3 to 0x4C \n\
/* 0803733a */ BL create_affine_sprite \n\
/* 0803733e */ LDR R1, [R5] \n\
/* 08037340 */ STR R0, [R1, 0x34] \n\
/* 08037342 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08037344 */ LDR R0, [R2] \n\
/* 08037346 */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 08037348 */ LDRSH R1, [R1, R2] \n\
/* 0803734a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803734c */ LSLS R2, R2, 0x5 \n\
/* 0803734e */ BL sprite_attr_set \n\
/* 08037352 */ LDR R0, [R5] \n\
/* 08037354 */ STR R4, [R0, 0x3C] \n\
/* 08037356 */ ADD SP, 0x1C \n\
/* 08037358 */ POP {R3} \n\
/* 0803735a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803735c */ POP {R4-R6} \n\
/* 0803735e */ POP {R0} \n\
/* 08037360 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
