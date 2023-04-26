asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c52c \n\
/* 0803c52c */ PUSH {R4-R7, LR} \n\
/* 0803c52e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0803c530 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803c532 */ PUSH {R6, R7} \n\
/* 0803c534 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c536 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803c538 */ LDR R1, =gCurrentEngineData \n\
/* 0803c53a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0803c53c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803c53e */ MOVS R7, 0x2C @ Set R7 to 0x2C \n\
 \n\
branch_0803c540: \n\
/* 0803c540 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803c542 */ LDR R0, [R3] \n\
/* 0803c544 */ ADDS R5, R0, R7 @ Set R5 to R0 + R7 \n\
/* 0803c546 */ LDR R4, [R5] \n\
/* 0803c548 */ LDR R3, [R5, 0x10] \n\
/* 0803c54a */ LDR R0, [R5, 0x14] \n\
/* 0803c54c */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0803c54e */ STR R3, [R5, 0x10] \n\
/* 0803c550 */ LDR R1, [R5, 0x4] \n\
/* 0803c552 */ LDR R0, [R5, 0xC] \n\
/* 0803c554 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803c556 */ STR R1, [R5, 0x4] \n\
/* 0803c558 */ LDR R2, [R5, 0x8] \n\
/* 0803c55a */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803c55c */ STR R2, [R5, 0x8] \n\
/* 0803c55e */ LDRH R0, [R5, 0x1A] \n\
/* 0803c560 */ LDRH R3, [R5, 0x18] \n\
/* 0803c562 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803c564 */ STRH R0, [R5, 0x18] \n\
/* 0803c566 */ LSLS R1, R1, 0x8 \n\
/* 0803c568 */ ASRS R1, R1, 0x10 \n\
/* 0803c56a */ LSLS R2, R2, 0x8 \n\
/* 0803c56c */ ASRS R2, R2, 0x10 \n\
/* 0803c56e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803c570 */ BL affine_sprite_set_x_y \n\
/* 0803c574 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803c576 */ LDRSH R1, [R5, R0] \n\
/* 0803c578 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803c57a */ BL affine_sprite_set_rotation \n\
/* 0803c57e */ LDR R0, [R5, 0x4] \n\
/* 0803c580 */ ASRS R1, R0, 0x8 \n\
/* 0803c582 */ LDR R0, [R5, 0x8] \n\
/* 0803c584 */ ASRS R0, R0, 0x8 \n\
/* 0803c586 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803c588 */ SUBS R2, 0x78 @ Subtract 0x78 from R2 \n\
/* 0803c58a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803c58c */ SUBS R0, 0x64 @ Subtract 0x64 from R0 \n\
/* 0803c58e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803c590 */ BGE branch_0803c594 \n\
/* 0803c592 */ ADDS R0, 0x3 @ Add 0x3 to R0 \n\
 \n\
branch_0803c594: \n\
/* 0803c594 */ ASRS R0, R0, 0x2 \n\
/* 0803c596 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0803c598 */ BLE branch_0803c5a2 \n\
/* 0803c59a */ STR R6, [R5, 0x14] \n\
/* 0803c59c */ STRH R6, [R5, 0x1A] \n\
/* 0803c59e */ STR R6, [R5, 0x10] \n\
/* 0803c5a0 */ STR R6, [R5, 0xC] \n\
 \n\
branch_0803c5a2: \n\
/* 0803c5a2 */ ADDS R7, 0x1C @ Add 0x1C to R7 \n\
/* 0803c5a4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803c5a6 */ ADD R8, R1 @ Add R1 to R8 \n\
/* 0803c5a8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803c5aa */ CMP R3, 0x17 @ Compare R3 and 0x17 \n\
/* 0803c5ac */ BLS branch_0803c540 \n\
/* 0803c5ae */ POP {R3, R4} \n\
/* 0803c5b0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c5b2 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c5b4 */ POP {R4-R7} \n\
/* 0803c5b6 */ POP {R0} \n\
/* 0803c5b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
