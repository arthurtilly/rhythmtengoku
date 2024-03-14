asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028504 \n\
/* 08028504 */ PUSH {R4, R5, LR} \n\
/* 08028506 */ SUB SP, 0xC \n\
/* 08028508 */ LDR R0, =gCurrentEngineData \n\
/* 0802850a */ LDR R4, [R0] \n\
/* 0802850c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 0802850e */ LSLS R0, R0, 0x2 \n\
/* 08028510 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08028512 */ LDR R5, =gSpriteHandler \n\
/* 08028514 */ LDR R0, [R5] \n\
/* 08028516 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028518 */ LDRSH R1, [R4, R2] \n\
/* 0802851a */ LDR R2, =anim_drum_student_use_tom \n\
/* 0802851c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802851e */ STR R3, [SP] \n\
/* 08028520 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08028522 */ STR R3, [SP, 0x4] \n\
/* 08028524 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08028526 */ STR R3, [SP, 0x8] \n\
/* 08028528 */ BL sprite_set_anim \n\
/* 0802852c */ LDR R0, [R5] \n\
/* 0802852e */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028530 */ LDRSH R1, [R4, R2] \n\
/* 08028532 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08028534 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 08028536 */ BL sprite_set_x_y \n\
/* 0802853a */ LDR R0, [R5] \n\
/* 0802853c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802853e */ LDRSH R1, [R4, R2] \n\
/* 08028540 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028542 */ BL sprite_set_anim_cel \n\
/* 08028546 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08028548 */ STRH R0, [R4, 0x26] \n\
/* 0802854a */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0802854c */ STRH R0, [R4, 0x28] \n\
/* 0802854e */ ADD SP, 0xC \n\
/* 08028550 */ POP {R4, R5} \n\
/* 08028552 */ POP {R0} \n\
/* 08028554 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
