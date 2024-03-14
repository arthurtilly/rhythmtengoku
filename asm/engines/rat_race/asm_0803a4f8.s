asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_spawn_stop \n\
/* 0803a4f8 */ PUSH {R4, R5, LR} \n\
/* 0803a4fa */ SUB SP, 0x14 \n\
/* 0803a4fc */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803a4fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a500 */ STRB R2, [R4, 0x2] \n\
/* 0803a502 */ LDR R5, =gSpriteHandler \n\
/* 0803a504 */ LDR R0, [R5] \n\
/* 0803a506 */ LDR R1, =anim_rat_race_crockery \n\
/* 0803a508 */ MOVS R2, 0x7E @ Set R2 to 0x7E \n\
/* 0803a50a */ STR R2, [SP] \n\
/* 0803a50c */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0803a50e */ STR R2, [SP, 0x4] \n\
/* 0803a510 */ STR R3, [SP, 0x8] \n\
/* 0803a512 */ STR R3, [SP, 0xC] \n\
/* 0803a514 */ STR R3, [SP, 0x10] \n\
/* 0803a516 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a518 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 0803a51a */ BL sprite_create \n\
/* 0803a51e */ STRH R0, [R4] \n\
/* 0803a520 */ LDRB R0, [R4, 0x2] \n\
/* 0803a522 */ BL func_0803a4a8 \n\
/* 0803a526 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803a528 */ STR R2, [R4, 0x4] \n\
/* 0803a52a */ LDR R0, [R5] \n\
/* 0803a52c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a52e */ LDRSH R1, [R4, R3] \n\
/* 0803a530 */ LSLS R2, R2, 0x8 \n\
/* 0803a532 */ ASRS R2, R2, 0x10 \n\
/* 0803a534 */ BL sprite_set_x \n\
/* 0803a538 */ LDR R0, =gCurrentEngineData \n\
/* 0803a53a */ LDR R0, [R0] \n\
/* 0803a53c */ LDRB R0, [R0, 0x10] \n\
/* 0803a53e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803a540 */ BEQ branch_0803a54e \n\
/* 0803a542 */ LDR R0, [R5] \n\
/* 0803a544 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a546 */ LDRSH R1, [R4, R2] \n\
/* 0803a548 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a54a */ BL sprite_set_anim_cel \n\
 \n\
branch_0803a54e: \n\
/* 0803a54e */ ADD SP, 0x14 \n\
/* 0803a550 */ POP {R4, R5} \n\
/* 0803a552 */ POP {R0} \n\
/* 0803a554 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
