asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b37c \n\
/* 0803b37c */ PUSH {R4-R7, LR} \n\
/* 0803b37e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803b380 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803b382 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803b384 */ PUSH {R5-R7} \n\
/* 0803b386 */ SUB SP, 0x10 \n\
/* 0803b388 */ LDR R0, =gCurrentEngineData \n\
/* 0803b38a */ LDR R0, [R0] \n\
/* 0803b38c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803b38e */ ADDS R7, 0x3C @ Add 0x3C to R7 \n\
/* 0803b390 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b392 */ STR R3, [R0, 0x34] \n\
/* 0803b394 */ BL func_0803b1e8 \n\
/* 0803b398 */ LDR R0, =D_03004ac0 \n\
/* 0803b39a */ LDRH R1, [R0] \n\
/* 0803b39c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803b39e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803b3a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803b3a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b3a4 */ BEQ branch_0803b3c4 \n\
/* 0803b3a6 */ LDR R0, =D_03004afc \n\
/* 0803b3a8 */ LDRH R1, [R0] \n\
/* 0803b3aa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803b3ac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803b3ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b3b0 */ BNE branch_0803b3d4 \n\
/* 0803b3b2 */ BL func_0803b924 \n\
/* 0803b3b6 */ B branch_0803b3d4 \n\
\n\
.ltorg \n\
 \n\
branch_0803b3c4: \n\
/* 0803b3c4 */ LDR R0, =D_03004b00 \n\
/* 0803b3c6 */ LDRH R1, [R0] \n\
/* 0803b3c8 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803b3ca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0803b3cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b3ce */ BNE branch_0803b3d4 \n\
/* 0803b3d0 */ BL func_0803b9fc \n\
 \n\
branch_0803b3d4: \n\
/* 0803b3d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b3d6 */ STR R0, [SP, 0xC] \n\
 \n\
branch_0803b3d8: \n\
/* 0803b3d8 */ LDRB R0, [R7, 0x5] \n\
/* 0803b3da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b3dc */ BEQ branch_0803b3e0 \n\
/* 0803b3de */ B branch_0803b56e \n\
 \n\
branch_0803b3e0: \n\
/* 0803b3e0 */ LDRB R0, [R7, 0x4] \n\
/* 0803b3e2 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 0803b3e4 */ BLS branch_0803b3e8 \n\
/* 0803b3e6 */ B branch_0803b56e \n\
 \n\
branch_0803b3e8: \n\
/* 0803b3e8 */ LSLS R0, R0, 0x2 \n\
/* 0803b3ea */ LDR R1, =jtbl_0803b3fc \n\
/* 0803b3ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b3ee */ LDR R0, [R0] \n\
/* 0803b3f0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803b3fc: \n\
.word branch_0803b56e \n\
.word jump_0803b418 \n\
.word jump_0803b420 \n\
.word branch_0803b56e \n\
.word jump_0803b538 \n\
.word branch_0803b56e \n\
.word jump_0803b420 \n\
jump_0803b418: \n\
/* 0803b418 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b41a */ BL func_0803b258 \n\
/* 0803b41e */ B branch_0803b56e \n\
jump_0803b420: \n\
/* 0803b420 */ LDR R0, =gCurrentEngineData \n\
/* 0803b422 */ LDR R2, [R0] \n\
/* 0803b424 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803b426 */ ADDS R1, 0xD2 @ Add 0xD2 to R1 \n\
/* 0803b428 */ LDRB R4, [R1] \n\
/* 0803b42a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803b42c */ BNE branch_0803b464 \n\
/* 0803b42e */ MOVS R1, 0x8E @ Set R1 to 0x8E \n\
/* 0803b430 */ LSLS R1, R1, 0x1 \n\
/* 0803b432 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803b434 */ LDRB R0, [R0] \n\
/* 0803b436 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b438 */ BEQ branch_0803b464 \n\
/* 0803b43a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803b43c */ STRB R3, [R7, 0x4] \n\
/* 0803b43e */ LDR R0, =gSpriteHandler \n\
/* 0803b440 */ LDR R0, [R0] \n\
/* 0803b442 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b444 */ LDRSH R1, [R7, R2] \n\
/* 0803b446 */ LDR R2, =anim_rat_run \n\
/* 0803b448 */ STR R3, [SP] \n\
/* 0803b44a */ STR R4, [SP, 0x4] \n\
/* 0803b44c */ STR R4, [SP, 0x8] \n\
/* 0803b44e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b450 */ BL sprite_set_anim \n\
/* 0803b454 */ B branch_0803b56e \n\
\n\
.ltorg \n\
 \n\
branch_0803b464: \n\
/* 0803b464 */ LDR R1, [R7, 0x8] \n\
/* 0803b466 */ ASRS R1, R1, 0x8 \n\
/* 0803b468 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0803b46a */ LDR R3, =gCurrentEngineData \n\
/* 0803b46c */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803b46e */ LDR R0, [R3] \n\
/* 0803b470 */ LDR R0, [R0, 0x64] \n\
/* 0803b472 */ ASRS R0, R0, 0x8 \n\
/* 0803b474 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803b476 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803b478 */ BGE branch_0803b47c \n\
/* 0803b47a */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0803b47c: \n\
/* 0803b47c */ CMP R1, 0x18 @ Compare R1 and 0x18 \n\
/* 0803b47e */ BGT branch_0803b56e \n\
/* 0803b480 */ LDR R6, =gSpriteHandler \n\
/* 0803b482 */ LDR R0, [R6] \n\
/* 0803b484 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b486 */ LDRSH R1, [R7, R2] \n\
/* 0803b488 */ LDR R2, =anim_rat_collide_stop \n\
/* 0803b48a */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803b48c */ STR R5, [SP] \n\
/* 0803b48e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b490 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b492 */ STR R3, [SP, 0x4] \n\
/* 0803b494 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0803b496 */ STR R4, [SP, 0x8] \n\
/* 0803b498 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b49a */ BL sprite_set_anim \n\
/* 0803b49e */ LDR R0, [R6] \n\
/* 0803b4a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b4a2 */ LDRSH R1, [R7, R2] \n\
/* 0803b4a4 */ LDR R3, =func_0803aef4 \n\
/* 0803b4a6 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0803b4a8 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803b4aa */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803b4ac */ BL sprite_set_callback \n\
/* 0803b4b0 */ STRB R5, [R7, 0xC] \n\
/* 0803b4b2 */ STRB R4, [R7, 0x4] \n\
/* 0803b4b4 */ LDR R0, [R6] \n\
/* 0803b4b6 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0803b4b8 */ LDR R1, [R2] \n\
/* 0803b4ba */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 0803b4bc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b4be */ LDRSH R1, [R1, R3] \n\
/* 0803b4c0 */ LDR R2, =anim_rat_collide_run \n\
/* 0803b4c2 */ STR R5, [SP] \n\
/* 0803b4c4 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803b4c6 */ STR R3, [SP, 0x4] \n\
/* 0803b4c8 */ STR R4, [SP, 0x8] \n\
/* 0803b4ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b4cc */ BL sprite_set_anim \n\
/* 0803b4d0 */ LDR R0, [R6] \n\
/* 0803b4d2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0803b4d4 */ LDR R3, [R1] \n\
/* 0803b4d6 */ ADDS R3, 0x5C @ Add 0x5C to R3 \n\
/* 0803b4d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b4da */ LDRSH R1, [R3, R2] \n\
/* 0803b4dc */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803b4de */ BL sprite_set_callback \n\
/* 0803b4e2 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0803b4e4 */ LDR R0, [R3] \n\
/* 0803b4e6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803b4e8 */ ADDS R1, 0x68 @ Add 0x68 to R1 \n\
/* 0803b4ea */ LDRB R0, [R1] \n\
/* 0803b4ec */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803b4ee */ BEQ branch_0803b4f4 \n\
/* 0803b4f0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803b4f2 */ STRB R0, [R1] \n\
 \n\
branch_0803b4f4: \n\
/* 0803b4f4 */ LDR R1, =gCurrentEngineData \n\
/* 0803b4f6 */ LDR R0, [R1] \n\
/* 0803b4f8 */ ADDS R0, 0x60 @ Add 0x60 to R0 \n\
/* 0803b4fa */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0803b4fc */ STRB R1, [R0] \n\
/* 0803b4fe */ LDR R0, =s_rat_crush_L_seqData \n\
/* 0803b500 */ BL play_sound \n\
/* 0803b504 */ LDR R2, =gCurrentEngineData \n\
/* 0803b506 */ LDR R0, [R2] \n\
/* 0803b508 */ MOVS R3, 0x8F @ Set R3 to 0x8F \n\
/* 0803b50a */ LSLS R3, R3, 0x1 \n\
/* 0803b50c */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0803b50e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b510 */ LDRSB R0, [R1, R0] \n\
/* 0803b512 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b514 */ BLT branch_0803b56e \n\
/* 0803b516 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803b518 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b51a */ BL gameplay_add_cue_result \n\
/* 0803b51e */ B branch_0803b56e \n\
\n\
.ltorg \n\
jump_0803b538: \n\
/* 0803b538 */ LDR R0, =gCurrentEngineData \n\
/* 0803b53a */ LDR R0, [R0] \n\
/* 0803b53c */ ADDS R0, 0xD2 @ Add 0xD2 to R0 \n\
/* 0803b53e */ LDRB R5, [R0] \n\
/* 0803b540 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803b542 */ BNE branch_0803b568 \n\
/* 0803b544 */ LDR R4, =gSpriteHandler \n\
/* 0803b546 */ LDR R0, [R4] \n\
/* 0803b548 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b54a */ LDRSH R1, [R7, R2] \n\
/* 0803b54c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803b54e */ STR R2, [SP] \n\
/* 0803b550 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803b552 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b554 */ BL sprite_set_playback \n\
/* 0803b558 */ LDR R0, [R4] \n\
/* 0803b55a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b55c */ LDRSH R1, [R7, R3] \n\
/* 0803b55e */ LDR R2, =func_0803aef4 \n\
/* 0803b560 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803b562 */ BL sprite_set_callback \n\
/* 0803b566 */ STRB R5, [R7, 0xC] \n\
 \n\
branch_0803b568: \n\
/* 0803b568 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b56a */ BL func_0803b258 \n\
 \n\
branch_0803b56e: \n\
/* 0803b56e */ LDRB R0, [R7, 0x4] \n\
/* 0803b570 */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0803b572 */ BLS branch_0803b576 \n\
/* 0803b574 */ B branch_0803b738 \n\
 \n\
branch_0803b576: \n\
/* 0803b576 */ LSLS R0, R0, 0x2 \n\
/* 0803b578 */ LDR R1, =jtbl_0803b590 \n\
/* 0803b57a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b57c */ LDR R0, [R0] \n\
/* 0803b57e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803b590: \n\
.word jump_0803b5b0 \n\
.word jump_0803b5fc \n\
.word jump_0803b66c \n\
.word jump_0803b67c \n\
.word jump_0803b6c0 \n\
.word jump_0803b6f8 \n\
.word jump_0803b71c \n\
.word branch_0803b738 \n\
jump_0803b5b0: \n\
/* 0803b5b0 */ BL func_0800c398 \n\
/* 0803b5b4 */ LSLS R0, R0, 0x6 \n\
/* 0803b5b6 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803b5b8 */ BL __udivsi3 \n\
/* 0803b5bc */ LDR R1, [R7, 0x8] \n\
/* 0803b5be */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803b5c0 */ STR R1, [R7, 0x8] \n\
/* 0803b5c2 */ ASRS R1, R1, 0x8 \n\
/* 0803b5c4 */ CMP R1, 0x77 @ Compare R1 and 0x77 \n\
/* 0803b5c6 */ BLE branch_0803b5d2 \n\
/* 0803b5c8 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803b5ca */ LSLS R0, R0, 0x7 \n\
/* 0803b5cc */ STR R0, [R7, 0x8] \n\
/* 0803b5ce */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803b5d0 */ STRB R0, [R7, 0x4] \n\
 \n\
branch_0803b5d2: \n\
/* 0803b5d2 */ LDR R0, =gSpriteHandler \n\
/* 0803b5d4 */ LDR R0, [R0] \n\
/* 0803b5d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b5d8 */ LDRSH R1, [R7, R2] \n\
/* 0803b5da */ LDR R2, =D_089e68ac \n\
/* 0803b5dc */ LDRB R3, [R7, 0x5] \n\
/* 0803b5de */ LSLS R3, R3, 0x2 \n\
/* 0803b5e0 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0803b5e2 */ LDR R2, [R7, 0x8] \n\
/* 0803b5e4 */ LDR R3, [R3] \n\
/* 0803b5e6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803b5e8 */ LSLS R2, R2, 0x8 \n\
/* 0803b5ea */ ASRS R2, R2, 0x10 \n\
/* 0803b5ec */ BL sprite_set_x \n\
/* 0803b5f0 */ B branch_0803b738 \n\
\n\
.ltorg \n\
jump_0803b5fc: \n\
/* 0803b5fc */ LDR R0, [R7, 0x8] \n\
/* 0803b5fe */ BL func_0803b1ac \n\
/* 0803b602 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803b604 */ LDR R0, [R7, 0x8] \n\
/* 0803b606 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0803b608 */ STR R2, [R7, 0x8] \n\
/* 0803b60a */ LDRB R0, [R7, 0x5] \n\
/* 0803b60c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b60e */ BNE branch_0803b61c \n\
/* 0803b610 */ LDR R0, =gCurrentEngineData \n\
/* 0803b612 */ LDR R1, [R0] \n\
/* 0803b614 */ STR R2, [R1, 0x30] \n\
/* 0803b616 */ LDR R0, [R1, 0x34] \n\
/* 0803b618 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803b61a */ STR R0, [R1, 0x34] \n\
 \n\
branch_0803b61c: \n\
/* 0803b61c */ LDR R0, =gSpriteHandler \n\
/* 0803b61e */ LDR R4, [R0] \n\
/* 0803b620 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b622 */ LDRSH R5, [R7, R3] \n\
/* 0803b624 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b626 */ BL func_0803b230 \n\
/* 0803b62a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b62c */ LSLS R2, R2, 0x8 \n\
/* 0803b62e */ ASRS R2, R2, 0x10 \n\
/* 0803b630 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803b632 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803b634 */ BL sprite_set_x \n\
/* 0803b638 */ LDR R0, =gCurrentEngineData \n\
/* 0803b63a */ LDR R1, [R0] \n\
/* 0803b63c */ LDR R0, [R1, 0x28] \n\
/* 0803b63e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b640 */ BNE branch_0803b644 \n\
/* 0803b642 */ B branch_0803b738 \n\
 \n\
branch_0803b644: \n\
/* 0803b644 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803b646 */ ADDS R0, 0xD0 @ Add 0xD0 to R0 \n\
/* 0803b648 */ LDRH R0, [R0] \n\
/* 0803b64a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0803b64c */ BL __umodsi3 \n\
/* 0803b650 */ LSLS R0, R0, 0x10 \n\
/* 0803b652 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b654 */ BNE branch_0803b738 \n\
/* 0803b656 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b658 */ BL func_0803b230 \n\
/* 0803b65c */ BL func_0803bb2c \n\
/* 0803b660 */ B branch_0803b738 \n\
\n\
.ltorg \n\
jump_0803b66c: \n\
/* 0803b66c */ LDR R0, =gSpriteHandler \n\
/* 0803b66e */ LDR R4, [R0] \n\
/* 0803b670 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b672 */ LDRSH R5, [R7, R0] \n\
/* 0803b674 */ B branch_0803b700 \n\
\n\
.ltorg \n\
jump_0803b67c: \n\
/* 0803b67c */ BL func_0800c398 \n\
/* 0803b680 */ LSLS R0, R0, 0x6 \n\
/* 0803b682 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 0803b684 */ BL __udivsi3 \n\
/* 0803b688 */ LSLS R0, R0, 0x2 \n\
/* 0803b68a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0803b68c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803b68e */ BL __udivsi3 \n\
/* 0803b692 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803b694 */ LDR R0, [R7, 0x8] \n\
/* 0803b696 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0803b698 */ STR R2, [R7, 0x8] \n\
/* 0803b69a */ LDRB R0, [R7, 0x5] \n\
/* 0803b69c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b69e */ BNE branch_0803b6ac \n\
/* 0803b6a0 */ LDR R0, =gCurrentEngineData \n\
/* 0803b6a2 */ LDR R1, [R0] \n\
/* 0803b6a4 */ STR R2, [R1, 0x30] \n\
/* 0803b6a6 */ LDR R0, [R1, 0x34] \n\
/* 0803b6a8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803b6aa */ STR R0, [R1, 0x34] \n\
 \n\
branch_0803b6ac: \n\
/* 0803b6ac */ LDR R0, =gSpriteHandler \n\
/* 0803b6ae */ LDR R4, [R0] \n\
/* 0803b6b0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803b6b2 */ LDRSH R5, [R7, R1] \n\
/* 0803b6b4 */ B branch_0803b700 \n\
\n\
.ltorg \n\
jump_0803b6c0: \n\
/* 0803b6c0 */ BL func_0800c398 \n\
/* 0803b6c4 */ LSLS R0, R0, 0x6 \n\
/* 0803b6c6 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 0803b6c8 */ BL __udivsi3 \n\
/* 0803b6cc */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803b6ce */ LDR R0, [R7, 0x8] \n\
/* 0803b6d0 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 0803b6d2 */ STR R2, [R7, 0x8] \n\
/* 0803b6d4 */ LDRB R0, [R7, 0x5] \n\
/* 0803b6d6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b6d8 */ BNE branch_0803b6e6 \n\
/* 0803b6da */ LDR R0, =gCurrentEngineData \n\
/* 0803b6dc */ LDR R1, [R0] \n\
/* 0803b6de */ STR R2, [R1, 0x30] \n\
/* 0803b6e0 */ LDR R0, [R1, 0x34] \n\
/* 0803b6e2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803b6e4 */ STR R0, [R1, 0x34] \n\
 \n\
branch_0803b6e6: \n\
/* 0803b6e6 */ LDR R0, =gSpriteHandler \n\
/* 0803b6e8 */ LDR R4, [R0] \n\
/* 0803b6ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b6ec */ LDRSH R5, [R7, R2] \n\
/* 0803b6ee */ B branch_0803b700 \n\
\n\
.ltorg \n\
jump_0803b6f8: \n\
/* 0803b6f8 */ LDR R0, =gSpriteHandler \n\
/* 0803b6fa */ LDR R4, [R0] \n\
/* 0803b6fc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b6fe */ LDRSH R5, [R7, R3] \n\
 \n\
branch_0803b700: \n\
/* 0803b700 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b702 */ BL func_0803b230 \n\
/* 0803b706 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b708 */ LSLS R2, R2, 0x8 \n\
/* 0803b70a */ ASRS R2, R2, 0x10 \n\
/* 0803b70c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803b70e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803b710 */ BL sprite_set_x \n\
/* 0803b714 */ B branch_0803b738 \n\
\n\
.ltorg \n\
jump_0803b71c: \n\
/* 0803b71c */ LDR R0, =gSpriteHandler \n\
/* 0803b71e */ LDR R4, [R0] \n\
/* 0803b720 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b722 */ LDRSH R5, [R7, R0] \n\
/* 0803b724 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b726 */ BL func_0803b230 \n\
/* 0803b72a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b72c */ LSLS R2, R2, 0x8 \n\
/* 0803b72e */ ASRS R2, R2, 0x10 \n\
/* 0803b730 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803b732 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803b734 */ BL sprite_set_x \n\
 \n\
branch_0803b738: \n\
/* 0803b738 */ LDRB R0, [R7, 0x4] \n\
/* 0803b73a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803b73c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b73e */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0803b740 */ BNE branch_0803b7e0 \n\
/* 0803b742 */ LDR R1, [R7, 0x8] \n\
/* 0803b744 */ ASRS R1, R1, 0x8 \n\
/* 0803b746 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0803b748 */ LDR R0, =gCurrentEngineData \n\
/* 0803b74a */ LDR R0, [R0] \n\
/* 0803b74c */ LDR R0, [R0, 0x18] \n\
/* 0803b74e */ ASRS R0, R0, 0x8 \n\
/* 0803b750 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803b752 */ BGE branch_0803b7e0 \n\
/* 0803b754 */ LDR R5, =gSpriteHandler \n\
/* 0803b756 */ LDR R0, [R5] \n\
/* 0803b758 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803b75a */ LDRSH R1, [R7, R2] \n\
/* 0803b75c */ LDR R2, =anim_rat_fear_particles_barely \n\
/* 0803b75e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803b760 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0803b762 */ STR R4, [SP] \n\
/* 0803b764 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803b766 */ STR R4, [SP, 0x4] \n\
/* 0803b768 */ STR R4, [SP, 0x8] \n\
/* 0803b76a */ BL sprite_set_anim \n\
/* 0803b76e */ LDR R0, [R5] \n\
/* 0803b770 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b772 */ LDRSH R1, [R7, R3] \n\
/* 0803b774 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0803b776 */ BL sprite_get_data \n\
/* 0803b77a */ LDR R1, =anim_rat_angry_run_r \n\
/* 0803b77c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803b77e */ BNE branch_0803b7b0 \n\
/* 0803b780 */ LDR R4, [R5] \n\
/* 0803b782 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803b784 */ LDRSH R5, [R7, R0] \n\
/* 0803b786 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b788 */ BL func_0803b230 \n\
/* 0803b78c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b78e */ ASRS R2, R2, 0x8 \n\
/* 0803b790 */ SUBS R2, 0xC @ Subtract 0xC from R2 \n\
/* 0803b792 */ LSLS R2, R2, 0x10 \n\
/* 0803b794 */ ASRS R2, R2, 0x10 \n\
/* 0803b796 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803b798 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803b79a */ BL sprite_set_x \n\
/* 0803b79e */ B branch_0803b7ca \n\
\n\
.ltorg \n\
 \n\
branch_0803b7b0: \n\
/* 0803b7b0 */ LDR R4, [R5] \n\
/* 0803b7b2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803b7b4 */ LDRSH R5, [R7, R1] \n\
/* 0803b7b6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b7b8 */ BL func_0803b230 \n\
/* 0803b7bc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b7be */ LSLS R2, R2, 0x8 \n\
/* 0803b7c0 */ ASRS R2, R2, 0x10 \n\
/* 0803b7c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803b7c4 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803b7c6 */ BL sprite_set_x \n\
 \n\
branch_0803b7ca: \n\
/* 0803b7ca */ LDR R0, =gSpriteHandler \n\
/* 0803b7cc */ LDR R0, [R0] \n\
/* 0803b7ce */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803b7d0 */ LDRSH R1, [R7, R2] \n\
/* 0803b7d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803b7d4 */ BL sprite_set_visible \n\
/* 0803b7d8 */ B branch_0803b89a \n\
\n\
.ltorg \n\
 \n\
branch_0803b7e0: \n\
/* 0803b7e0 */ LSLS R0, R2, 0x18 \n\
/* 0803b7e2 */ LSRS R0, R0, 0x18 \n\
/* 0803b7e4 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803b7e6 */ BNE branch_0803b88c \n\
/* 0803b7e8 */ LDR R0, =gCurrentEngineData \n\
/* 0803b7ea */ LDR R3, [R0] \n\
/* 0803b7ec */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803b7ee */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0803b7f0 */ LDRB R0, [R0] \n\
/* 0803b7f2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b7f4 */ BNE branch_0803b88c \n\
/* 0803b7f6 */ LDRB R2, [R7, 0x5] \n\
/* 0803b7f8 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 0803b7fa */ BNE branch_0803b80a \n\
/* 0803b7fc */ LDR R1, [R7, 0x8] \n\
/* 0803b7fe */ ASRS R1, R1, 0x8 \n\
/* 0803b800 */ ADDS R1, 0x10 @ Add 0x10 to R1 \n\
/* 0803b802 */ LDR R0, [R3, 0x18] \n\
/* 0803b804 */ ASRS R0, R0, 0x8 \n\
/* 0803b806 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803b808 */ BLT branch_0803b81c \n\
 \n\
branch_0803b80a: \n\
/* 0803b80a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803b80c */ BNE branch_0803b88c \n\
/* 0803b80e */ LDR R1, [R7, 0x8] \n\
/* 0803b810 */ ASRS R1, R1, 0x8 \n\
/* 0803b812 */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 0803b814 */ LDR R0, [R3, 0x18] \n\
/* 0803b816 */ ASRS R0, R0, 0x8 \n\
/* 0803b818 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803b81a */ BGE branch_0803b88c \n\
 \n\
branch_0803b81c: \n\
/* 0803b81c */ LDR R3, =gSpriteHandler \n\
/* 0803b81e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b820 */ LDR R0, [R3] \n\
/* 0803b822 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803b824 */ LDRSH R1, [R7, R2] \n\
/* 0803b826 */ LDR R2, =anim_rat_fear_particles_miss \n\
/* 0803b828 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803b82a */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0803b82c */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803b82e */ STR R4, [SP] \n\
/* 0803b830 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803b832 */ STR R4, [SP, 0x4] \n\
/* 0803b834 */ STR R4, [SP, 0x8] \n\
/* 0803b836 */ BL sprite_set_anim \n\
/* 0803b83a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803b83c */ LDR R5, [R3] \n\
/* 0803b83e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803b840 */ LDRSH R6, [R7, R0] \n\
/* 0803b842 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b844 */ BL func_0803b230 \n\
/* 0803b848 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b84a */ LSLS R2, R2, 0x8 \n\
/* 0803b84c */ ASRS R2, R2, 0x10 \n\
/* 0803b84e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803b850 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0803b852 */ BL sprite_set_x \n\
/* 0803b856 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803b858 */ LDR R0, [R1] \n\
/* 0803b85a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803b85c */ LDRSH R1, [R7, R2] \n\
/* 0803b85e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803b860 */ BL sprite_set_visible \n\
/* 0803b864 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803b866 */ LDR R0, [R3] \n\
/* 0803b868 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b86a */ LDRSH R1, [R7, R2] \n\
/* 0803b86c */ LDR R2, =anim_rat_duck \n\
/* 0803b86e */ STR R4, [SP] \n\
/* 0803b870 */ STR R4, [SP, 0x4] \n\
/* 0803b872 */ STR R4, [SP, 0x8] \n\
/* 0803b874 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b876 */ BL sprite_set_anim \n\
/* 0803b87a */ B branch_0803b89a \n\
\n\
.ltorg \n\
 \n\
branch_0803b88c: \n\
/* 0803b88c */ LDR R0, =gSpriteHandler \n\
/* 0803b88e */ LDR R0, [R0] \n\
/* 0803b890 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803b892 */ LDRSH R1, [R7, R3] \n\
/* 0803b894 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b896 */ BL sprite_set_visible \n\
 \n\
branch_0803b89a: \n\
/* 0803b89a */ LDRB R0, [R7, 0x5] \n\
/* 0803b89c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803b89e */ BNE branch_0803b8c6 \n\
/* 0803b8a0 */ LDR R0, =gSpriteHandler \n\
/* 0803b8a2 */ LDR R5, [R0] \n\
/* 0803b8a4 */ LDR R0, =gCurrentEngineData \n\
/* 0803b8a6 */ LDR R0, [R0] \n\
/* 0803b8a8 */ ADDS R0, 0xDC @ Add 0xDC to R0 \n\
/* 0803b8aa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803b8ac */ LDRSH R4, [R0, R1] \n\
/* 0803b8ae */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b8b0 */ BL func_0803b230 \n\
/* 0803b8b4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b8b6 */ ASRS R2, R2, 0x8 \n\
/* 0803b8b8 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 0803b8ba */ LSLS R2, R2, 0x10 \n\
/* 0803b8bc */ ASRS R2, R2, 0x10 \n\
/* 0803b8be */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803b8c0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803b8c2 */ BL sprite_set_x \n\
 \n\
branch_0803b8c6: \n\
/* 0803b8c6 */ LDRB R0, [R7, 0x5] \n\
/* 0803b8c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b8ca */ BNE branch_0803b8f4 \n\
/* 0803b8cc */ LDR R0, =gSpriteHandler \n\
/* 0803b8ce */ LDR R5, [R0] \n\
/* 0803b8d0 */ LDR R0, =gCurrentEngineData \n\
/* 0803b8d2 */ LDR R0, [R0] \n\
/* 0803b8d4 */ ADDS R0, 0x6C @ Add 0x6C to R0 \n\
/* 0803b8d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b8d8 */ LDRSH R4, [R0, R2] \n\
/* 0803b8da */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0803b8dc */ BL func_0803b230 \n\
/* 0803b8e0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b8e2 */ ASRS R2, R2, 0x8 \n\
/* 0803b8e4 */ SUBS R2, 0x3 @ Subtract 0x3 from R2 \n\
/* 0803b8e6 */ LSLS R2, R2, 0x10 \n\
/* 0803b8e8 */ ASRS R2, R2, 0x10 \n\
/* 0803b8ea */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803b8ec */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803b8ee */ MOVS R3, 0x94 @ Set R3 to 0x94 \n\
/* 0803b8f0 */ BL sprite_set_x_y \n\
 \n\
branch_0803b8f4: \n\
/* 0803b8f4 */ LDR R0, [SP, 0xC] \n\
/* 0803b8f6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803b8f8 */ LSLS R0, R0, 0x18 \n\
/* 0803b8fa */ LSRS R0, R0, 0x18 \n\
/* 0803b8fc */ STR R0, [SP, 0xC] \n\
/* 0803b8fe */ ADDS R7, 0x10 @ Add 0x10 to R7 \n\
/* 0803b900 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803b902 */ BHI branch_0803b906 \n\
/* 0803b904 */ B branch_0803b3d8 \n\
 \n\
branch_0803b906: \n\
/* 0803b906 */ BL func_0803ad60 \n\
/* 0803b90a */ ADD SP, 0x10 \n\
/* 0803b90c */ POP {R3-R5} \n\
/* 0803b90e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b910 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803b912 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803b914 */ POP {R4-R7} \n\
/* 0803b916 */ POP {R0} \n\
/* 0803b918 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
