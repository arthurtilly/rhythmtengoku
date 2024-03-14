asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d43c \n\
/* 0802d43c */ PUSH {R4-R7, LR} \n\
/* 0802d43e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802d440 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802d442 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0802d444 */ PUSH {R5-R7} \n\
/* 0802d446 */ SUB SP, 0x4 \n\
/* 0802d448 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802d44a */ STR R0, [SP] \n\
 \n\
branch_0802d44c: \n\
/* 0802d44c */ LDR R0, =gCurrentEngineData \n\
/* 0802d44e */ LDR R1, [R0] \n\
 \n\
branch_0802d450: \n\
/* 0802d450 */ LDR R3, [SP] \n\
/* 0802d452 */ LSLS R2, R3, 0x4 \n\
/* 0802d454 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0802d456 */ LSLS R3, R3, 0x1 \n\
/* 0802d458 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802d45a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d45c */ LDR R1, [R1] \n\
/* 0802d45e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802d460 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0802d462 */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
 \n\
branch_0802d464: \n\
/* 0802d464 */ BLS branch_0802d468 \n\
/* 0802d466 */ B branch_0802d7f2 \n\
 \n\
branch_0802d468: \n\
/* 0802d468 */ LSLS R0, R1, 0x2 \n\
/* 0802d46a */ LDR R1, =jtbl_0802d47c \n\
/* 0802d46c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d46e */ LDR R0, [R0] \n\
/* 0802d470 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0802d47c: \n\
.word branch_0802d7f2 \n\
.word jump_0802d490 \n\
.word jump_0802d4e4 \n\
.word jump_0802d688 \n\
.word jump_0802d720 \n\
\n\
jump_0802d490: \n\
/* 0802d490 */ BL func_0800c398 \n\
/* 0802d494 */ LDR R5, =gCurrentEngineData \n\
/* 0802d496 */ LDR R4, [R5] \n\
/* 0802d498 */ MOVS R1, 0xBE @ Set R1 to 0xBE \n\
/* 0802d49a */ LSLS R1, R1, 0x1 \n\
/* 0802d49c */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0802d49e */ ADDS R4, R4, R7 @ Set R4 to R4 + R7 \n\
/* 0802d4a0 */ LDR R1, [R4] \n\
/* 0802d4a2 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802d4a4 */ STR R1, [R4] \n\
/* 0802d4a6 */ BL func_0800c398 \n\
/* 0802d4aa */ LSLS R0, R0, 0x1 \n\
/* 0802d4ac */ LDR R1, [R4] \n\
/* 0802d4ae */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802d4b0 */ BCS branch_0802d4b4 \n\
/* 0802d4b2 */ B branch_0802d7f2 \n\
 \n\
branch_0802d4b4: \n\
/* 0802d4b4 */ LDR R2, [R5] \n\
/* 0802d4b6 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0802d4b8 */ LSLS R3, R3, 0x1 \n\
/* 0802d4ba */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802d4bc */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d4be */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802d4c0 */ STR R1, [R0] \n\
/* 0802d4c2 */ LDR R0, =gSpriteHandler \n\
/* 0802d4c4 */ LDR R0, [R0] \n\
/* 0802d4c6 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 0802d4c8 */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 0802d4ca */ LSLS R1, R1, 0x1 \n\
/* 0802d4cc */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802d4ce */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0802d4d0: \n\
/* 0802d4d0 */ LDRSH R1, [R2, R3] \n\
/* 0802d4d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802d4d4 */ BL sprite_set_visible \n\
/* 0802d4d8 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
\n\
jump_0802d4e4: \n\
/* 0802d4e4 */ BL func_0800c398 \n\
/* 0802d4e8 */ LDR R1, =gCurrentEngineData \n\
/* 0802d4ea */ LDR R6, [R1] \n\
/* 0802d4ec */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 0802d4ee */ LSLS R2, R2, 0x1 \n\
/* 0802d4f0 */ ADDS R1, R6, R2 @ Set R1 to R6 + R2 \n\
/* 0802d4f2 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d4f4 */ LDR R4, [R1] \n\
/* 0802d4f6 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802d4f8 */ STR R4, [R1] \n\
/* 0802d4fa */ ASRS R4, R4, 0x8 \n\
/* 0802d4fc */ LSLS R0, R4, 0x4 \n\
/* 0802d4fe */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802d500 */ BL __divsi3 \n\
/* 0802d504 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802d506 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d508 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802d50a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d50c */ SUBS R1, R0, R3 @ Set R1 to R0 - R3 \n\
/* 0802d50e */ MOVS R5, 0x8 @ Set R5 to 0x8 \n\
/* 0802d510 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 0802d512 */ LSLS R0, R1, 0x5 \n\
/* 0802d514 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802d516 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802d518 */ BL __divsi3 \n\
/* 0802d51c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802d51e */ BL __divsi3 \n\
/* 0802d522 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802d524 */ ADDS R5, 0x54 @ Add 0x54 to R5 \n\
/* 0802d526 */ LSLS R0, R4, 0x3 \n\
/* 0802d528 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d52a */ LSLS R0, R0, 0x3 \n\
/* 0802d52c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802d52e */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802d530 */ BL __divsi3 \n\
/* 0802d534 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0802d536 */ LDR R0, =gSpriteHandler \n\
/* 0802d538 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0802d53a */ LDR R0, [R0] \n\
/* 0802d53c */ ADDS R6, R6, R7 @ Set R6 to R6 + R7 \n\
/* 0802d53e */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 0802d540 */ LSLS R1, R1, 0x1 \n\
/* 0802d542 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0802d544 */ ADD R6, R10 @ Add R10 to R6 \n\
/* 0802d546 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d548 */ LDRSH R1, [R6, R2] \n\
/* 0802d54a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d54c */ LSLS R2, R3, 0x10 \n\
/* 0802d54e */ ASRS R2, R2, 0x10 \n\
/* 0802d550 */ LSLS R3, R5, 0x10 \n\
/* 0802d552 */ ASRS R3, R3, 0x10 \n\
/* 0802d554 */ BL sprite_set_x_y \n\
/* 0802d558 */ LDR R1, =gCurrentEngineData \n\
/* 0802d55a */ LDR R0, [R1] \n\
/* 0802d55c */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 0802d55e */ LSLS R2, R2, 0x1 \n\
/* 0802d560 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802d562 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d564 */ LDR R1, [R0] \n\
/* 0802d566 */ LDR R0, =0x000017ff \n\
/* 0802d568 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802d56a */ BGT branch_0802d56e \n\
/* 0802d56c */ B branch_0802d7f2 \n\
 \n\
branch_0802d56e: \n\
/* 0802d56e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802d570 */ BL agb_random \n\
/* 0802d574 */ LSLS R0, R0, 0x10 \n\
/* 0802d576 */ LSRS R4, R0, 0x10 \n\
/* 0802d578 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802d57a */ BNE branch_0802d5a8 \n\
/* 0802d57c */ LDR R0, =gCurrentEngineData \n\
/* 0802d57e */ LDR R3, [R0] \n\
/* 0802d580 */ MOVS R1, 0xF4 @ Set R1 to 0xF4 \n\
/* 0802d582 */ LSLS R1, R1, 0x2 \n\
/* 0802d584 */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0802d586 */ LDRB R0, [R0] \n\
/* 0802d588 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802d58a */ BEQ branch_0802d5a8 \n\
/* 0802d58c */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802d58e */ LSLS R2, R2, 0x1 \n\
/* 0802d590 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802d592 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d594 */ LDR R2, [R0] \n\
/* 0802d596 */ LSLS R1, R2, 0x2 \n\
/* 0802d598 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d59a */ LSLS R1, R1, 0x3 \n\
/* 0802d59c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802d59e */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802d5a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d5a2 */ LDR R0, [R0] \n\
/* 0802d5a4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802d5a6 */ BNE branch_0802d5dc \n\
 \n\
branch_0802d5a8: \n\
/* 0802d5a8 */ LDR R0, =gCurrentEngineData \n\
/* 0802d5aa */ LDR R2, [R0] \n\
/* 0802d5ac */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0802d5ae */ LSLS R3, R3, 0x1 \n\
/* 0802d5b0 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802d5b2 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d5b4 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802d5b6 */ STR R1, [R0] \n\
/* 0802d5b8 */ MOVS R1, 0xBE @ Set R1 to 0xBE \n\
/* 0802d5ba */ LSLS R1, R1, 0x1 \n\
/* 0802d5bc */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802d5be */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d5c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802d5c2 */ STR R1, [R0] \n\
/* 0802d5c4 */ LDR R0, =s_esa_catch_seqData \n\
/* 0802d5c6 */ BL play_sound \n\
/* 0802d5ca */ B branch_0802d62a \n\
\n\
.ltorg \n\
 \n\
branch_0802d5dc: \n\
/* 0802d5dc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d5de */ BL func_0802cfe0 \n\
/* 0802d5e2 */ LDR R2, =gCurrentEngineData \n\
/* 0802d5e4 */ LDR R1, [R2] \n\
/* 0802d5e6 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 0802d5e8 */ LSLS R3, R3, 0x1 \n\
/* 0802d5ea */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802d5ec */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d5ee */ STR R4, [R0] \n\
/* 0802d5f0 */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 0802d5f2 */ LSLS R2, R2, 0x1 \n\
/* 0802d5f4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802d5f6 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d5f8 */ STR R4, [R0] \n\
/* 0802d5fa */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802d5fc */ LDR R0, [R3] \n\
/* 0802d5fe */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d600 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0802d602 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d604 */ LDRSH R1, [R1, R2] \n\
/* 0802d606 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d608 */ BL sprite_set_visible \n\
/* 0802d60c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802d60e */ LDR R0, [R3] \n\
/* 0802d610 */ LDR R2, =gCurrentEngineData \n\
/* 0802d612 */ LDR R1, [R2] \n\
/* 0802d614 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d616 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0802d618 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d61a */ LDRSH R1, [R1, R3] \n\
/* 0802d61c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d61e */ MOVS R3, 0x74 @ Set R3 to 0x74 \n\
/* 0802d620 */ BL sprite_set_x_y \n\
/* 0802d624 */ LDR R0, =s_esa_catch_seqData \n\
/* 0802d626 */ BL play_sound \n\
 \n\
branch_0802d62a: \n\
/* 0802d62a */ LDR R0, =gCurrentEngineData \n\
/* 0802d62c */ LDR R2, [R0] \n\
/* 0802d62e */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0802d630 */ LSLS R1, R1, 0x1 \n\
/* 0802d632 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802d634 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d636 */ LDR R1, [R0] \n\
/* 0802d638 */ LSLS R0, R1, 0x2 \n\
/* 0802d63a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d63c */ LSLS R0, R0, 0x3 \n\
/* 0802d63e */ ADDS R2, 0x40 @ Add 0x40 to R2 \n\
/* 0802d640 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802d642 */ LDR R2, [R2] \n\
/* 0802d644 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802d646 */ BEQ branch_0802d67c \n\
/* 0802d648 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0802d64a */ BGT branch_0802d65c \n\
/* 0802d64c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802d64e */ BEQ branch_0802d670 \n\
/* 0802d650 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
 \n\
branch_0802d65c: \n\
/* 0802d65c */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0802d65e */ BLE branch_0802d662 \n\
/* 0802d660 */ B branch_0802d7f2 \n\
 \n\
branch_0802d662: \n\
/* 0802d662 */ LDR R0, =s_esa_pengin3_1_seqData \n\
/* 0802d664 */ BL play_sound \n\
/* 0802d668 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
 \n\
branch_0802d670: \n\
/* 0802d670 */ LDR R0, =s_esa_pengin1_1_seqData \n\
/* 0802d672 */ BL play_sound \n\
/* 0802d676 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
 \n\
branch_0802d67c: \n\
/* 0802d67c */ LDR R0, =s_esa_pengin2_1_seqData \n\
/* 0802d67e */ BL play_sound \n\
/* 0802d682 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
\n\
jump_0802d688: \n\
/* 0802d688 */ LDR R0, [R6] \n\
/* 0802d68a */ MOVS R4, 0xC0 @ Set R4 to 0xC0 \n\
/* 0802d68c */ LSLS R4, R4, 0x1 \n\
/* 0802d68e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d690 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d692 */ LDR R0, [R0] \n\
/* 0802d694 */ BL func_0802d068 \n\
/* 0802d698 */ SUBS R0, 0x12 @ Subtract 0x12 from R0 \n\
/* 0802d69a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d69c */ LDR R0, [R6] \n\
/* 0802d69e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d6a0 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d6a2 */ LDR R0, [R0] \n\
/* 0802d6a4 */ BL func_0802d080 \n\
/* 0802d6a8 */ SUBS R5, R0, 0x4 @ Set R5 to R0 - 0x4 \n\
/* 0802d6aa */ LDR R4, =gSpriteHandler \n\
/* 0802d6ac */ LDR R0, [R4] \n\
/* 0802d6ae */ LDR R1, [R6] \n\
/* 0802d6b0 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d6b2 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 0802d6b4 */ LSLS R2, R2, 0x1 \n\
/* 0802d6b6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d6b8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d6ba */ LDRSH R1, [R1, R3] \n\
/* 0802d6bc */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d6be */ LSLS R2, R3, 0x10 \n\
/* 0802d6c0 */ ASRS R2, R2, 0x10 \n\
/* 0802d6c2 */ LSLS R3, R5, 0x10 \n\
/* 0802d6c4 */ ASRS R3, R3, 0x10 \n\
/* 0802d6c6 */ BL sprite_set_x_y \n\
/* 0802d6ca */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0802d6cc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802d6ce */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0802d6d0 */ BLT branch_0802d6d4 \n\
/* 0802d6d2 */ B branch_0802d7f2 \n\
 \n\
branch_0802d6d4: \n\
/* 0802d6d4 */ LDR R1, [R6] \n\
/* 0802d6d6 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0802d6d8 */ LSLS R2, R2, 0x1 \n\
/* 0802d6da */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802d6dc */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d6de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d6e0 */ STR R2, [R0] \n\
/* 0802d6e2 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0802d6e4 */ LSLS R3, R3, 0x1 \n\
/* 0802d6e6 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802d6e8 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d6ea */ STR R2, [R0] \n\
/* 0802d6ec */ LDR R0, [R4] \n\
/* 0802d6ee */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d6f0 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 0802d6f2 */ LSLS R2, R2, 0x1 \n\
/* 0802d6f4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d6f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d6f8 */ LDRSH R1, [R1, R3] \n\
/* 0802d6fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d6fc */ BL sprite_set_visible \n\
/* 0802d700 */ LDR R0, [R4] \n\
/* 0802d702 */ LDR R1, [R6] \n\
/* 0802d704 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d706 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 0802d708 */ LSLS R2, R2, 0x1 \n\
/* 0802d70a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d70c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d70e */ LDRSH R1, [R1, R3] \n\
/* 0802d710 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d712 */ MOVS R3, 0x74 @ Set R3 to 0x74 \n\
/* 0802d714 */ BL sprite_set_x_y \n\
/* 0802d718 */ B branch_0802d7f2 \n\
\n\
.ltorg \n\
\n\
jump_0802d720: \n\
/* 0802d720 */ BL func_0800c398 \n\
/* 0802d724 */ LDR R1, =gCurrentEngineData \n\
/* 0802d726 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0802d728 */ LDR R6, [R1] \n\
/* 0802d72a */ MOVS R2, 0xBE @ Set R2 to 0xBE \n\
/* 0802d72c */ LSLS R2, R2, 0x1 \n\
/* 0802d72e */ ADDS R1, R6, R2 @ Set R1 to R6 + R2 \n\
/* 0802d730 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d732 */ LDR R4, [R1] \n\
/* 0802d734 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802d736 */ STR R4, [R1] \n\
/* 0802d738 */ ASRS R4, R4, 0x8 \n\
/* 0802d73a */ LSLS R0, R4, 0x4 \n\
/* 0802d73c */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802d73e */ BL __divsi3 \n\
/* 0802d742 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0802d744 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802d746 */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802d748 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d74a */ SUBS R1, R0, R3 @ Set R1 to R0 - R3 \n\
/* 0802d74c */ MOVS R5, 0x8 @ Set R5 to 0x8 \n\
/* 0802d74e */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 0802d750 */ LSLS R0, R1, 0x5 \n\
/* 0802d752 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802d754 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802d756 */ BL __divsi3 \n\
/* 0802d75a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0802d75c */ BL __divsi3 \n\
/* 0802d760 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802d762 */ ADDS R5, 0x54 @ Add 0x54 to R5 \n\
/* 0802d764 */ LSLS R0, R4, 0x3 \n\
/* 0802d766 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802d768 */ LSLS R0, R0, 0x3 \n\
/* 0802d76a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802d76c */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0802d76e */ BL __divsi3 \n\
/* 0802d772 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0802d774 */ LDR R4, =gSpriteHandler \n\
/* 0802d776 */ LDR R0, [R4] \n\
/* 0802d778 */ ADDS R6, R6, R7 @ Set R6 to R6 + R7 \n\
/* 0802d77a */ MOVS R1, 0xBA @ Set R1 to 0xBA \n\
/* 0802d77c */ LSLS R1, R1, 0x1 \n\
/* 0802d77e */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 0802d780 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d782 */ LDRSH R1, [R6, R2] \n\
/* 0802d784 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802d786 */ LSLS R2, R3, 0x10 \n\
/* 0802d788 */ ASRS R2, R2, 0x10 \n\
/* 0802d78a */ LSLS R3, R5, 0x10 \n\
/* 0802d78c */ ASRS R3, R3, 0x10 \n\
/* 0802d78e */ BL sprite_set_x_y \n\
/* 0802d792 */ CMP R5, 0xC7 @ Compare R5 and 0xC7 \n\
/* 0802d794 */ BLE branch_0802d7f2 \n\
/* 0802d796 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0802d798 */ LDR R1, [R0] \n\
/* 0802d79a */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0802d79c */ LSLS R2, R2, 0x1 \n\
/* 0802d79e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802d7a0 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d7a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d7a4 */ STR R2, [R0] \n\
/* 0802d7a6 */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 0802d7a8 */ LSLS R3, R3, 0x1 \n\
/* 0802d7aa */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0802d7ac */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802d7ae */ STR R2, [R0] \n\
/* 0802d7b0 */ LDR R0, [R4] \n\
/* 0802d7b2 */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d7b4 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 0802d7b6 */ LSLS R2, R2, 0x1 \n\
/* 0802d7b8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802d7ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d7bc */ LDRSH R1, [R1, R3] \n\
/* 0802d7be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d7c0 */ BL sprite_set_visible \n\
/* 0802d7c4 */ LDR R0, [R4] \n\
/* 0802d7c6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802d7c8 */ LDR R1, [R2] \n\
/* 0802d7ca */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0802d7cc */ MOVS R3, 0xBA @ Set R3 to 0xBA \n\
/* 0802d7ce */ LSLS R3, R3, 0x1 \n\
/* 0802d7d0 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0802d7d2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802d7d4 */ LDRSH R1, [R1, R2] \n\
/* 0802d7d6 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0802d7d8 */ MOVS R3, 0x74 @ Set R3 to 0x74 \n\
/* 0802d7da */ BL sprite_set_x_y \n\
/* 0802d7de */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802d7e0 */ LDR R0, [R3] \n\
/* 0802d7e2 */ MOVS R1, 0xF2 @ Set R1 to 0xF2 \n\
/* 0802d7e4 */ LSLS R1, R1, 0x2 \n\
/* 0802d7e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802d7e8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802d7ea */ STR R2, [R0] \n\
/* 0802d7ec */ LDR R0, =s_f_esa_splash_ball_seqData \n\
/* 0802d7ee */ BL play_sound \n\
 \n\
branch_0802d7f2: \n\
/* 0802d7f2 */ LDR R3, [SP] \n\
/* 0802d7f4 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0802d7f6 */ STR R3, [SP] \n\
/* 0802d7f8 */ CMP R3, 0x7 @ Compare R3 and 0x7 \n\
/* 0802d7fa */ BGT branch_0802d7fe \n\
/* 0802d7fc */ B branch_0802d44c \n\
 \n\
branch_0802d7fe: \n\
/* 0802d7fe */ ADD SP, 0x4 \n\
/* 0802d800 */ POP {R3-R5} \n\
/* 0802d802 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802d804 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802d806 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802d808 */ POP {R4-R7} \n\
/* 0802d80a */ POP {R0} \n\
/* 0802d80c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
