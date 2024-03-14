asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d4f0 \n\
/* 0803d4f0 */ PUSH {R4-R6, LR} \n\
/* 0803d4f2 */ SUB SP, 0x14 \n\
/* 0803d4f4 */ LDR R5, =gCurrentEngineData \n\
/* 0803d4f6 */ LDR R0, [R5] \n\
/* 0803d4f8 */ ADDS R0, 0x34 @ Add 0x34 to R0 \n\
/* 0803d4fa */ LDRB R0, [R0] \n\
/* 0803d4fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d4fe */ BEQ branch_0803d572 \n\
/* 0803d500 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803d502 */ BL space_dance_get_anim \n\
/* 0803d506 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803d508 */ LDR R4, =gSpriteHandler \n\
/* 0803d50a */ LDR R0, [R4] \n\
/* 0803d50c */ LDR R2, [R5] \n\
/* 0803d50e */ MOVS R6, 0x30 @ Set R6 to 0x30 \n\
/* 0803d510 */ LDRSH R3, [R2, R6] \n\
/* 0803d512 */ MOVS R6, 0x32 @ Set R6 to 0x32 \n\
/* 0803d514 */ LDRSH R2, [R2, R6] \n\
/* 0803d516 */ STR R2, [SP] \n\
/* 0803d518 */ LDR R2, =0x48d2 \n\
/* 0803d51a */ STR R2, [SP, 0x4] \n\
/* 0803d51c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803d51e */ STR R2, [SP, 0x8] \n\
/* 0803d520 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d522 */ STR R2, [SP, 0xC] \n\
/* 0803d524 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0803d526 */ STR R2, [SP, 0x10] \n\
/* 0803d528 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d52a */ BL sprite_create \n\
/* 0803d52e */ LDR R1, [R5] \n\
/* 0803d530 */ LDRH R0, [R1, 0x30] \n\
/* 0803d532 */ SUBS R0, 0x18 @ Subtract 0x18 from R0 \n\
/* 0803d534 */ STRH R0, [R1, 0x30] \n\
/* 0803d536 */ LDRH R0, [R1, 0x32] \n\
/* 0803d538 */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 0803d53a */ STRH R0, [R1, 0x32] \n\
/* 0803d53c */ LDR R0, [R4] \n\
/* 0803d53e */ MOVS R2, 0x2E @ Set R2 to 0x2E \n\
/* 0803d540 */ LDRSH R1, [R1, R2] \n\
/* 0803d542 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803d544 */ BL sprite_set_visible \n\
/* 0803d548 */ LDR R0, [R4] \n\
/* 0803d54a */ LDR R3, [R5] \n\
/* 0803d54c */ MOVS R4, 0x2E @ Set R4 to 0x2E \n\
/* 0803d54e */ LDRSH R1, [R3, R4] \n\
/* 0803d550 */ MOVS R6, 0x30 @ Set R6 to 0x30 \n\
/* 0803d552 */ LDRSH R2, [R3, R6] \n\
/* 0803d554 */ MOVS R4, 0x32 @ Set R4 to 0x32 \n\
/* 0803d556 */ LDRSH R3, [R3, R4] \n\
/* 0803d558 */ BL sprite_set_x_y \n\
/* 0803d55c */ LDR R2, [R5] \n\
/* 0803d55e */ MOVS R6, 0x30 @ Set R6 to 0x30 \n\
/* 0803d560 */ LDRSH R1, [R2, R6] \n\
/* 0803d562 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803d564 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803d566 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803d568 */ BGE branch_0803d572 \n\
/* 0803d56a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803d56c */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 0803d56e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803d570 */ STRB R0, [R1] \n\
 \n\
branch_0803d572: \n\
/* 0803d572 */ ADD SP, 0x14 \n\
/* 0803d574 */ POP {R4-R6} \n\
/* 0803d576 */ POP {R0} \n\
/* 0803d578 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
