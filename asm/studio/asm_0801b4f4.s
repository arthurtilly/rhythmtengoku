asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b4f4 \n\
/* 0801b4f4 */ PUSH {R4, R5, LR} \n\
/* 0801b4f6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801b4f8 */ LDR R0, =gCurrentSceneData \n\
/* 0801b4fa */ LDR R0, [R0] \n\
/* 0801b4fc */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b4fe */ LSLS R1, R1, 0x2 \n\
/* 0801b500 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b502 */ LDR R0, [R0] \n\
/* 0801b504 */ BL func_0800b368 \n\
/* 0801b508 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b50a */ BNE branch_0801b548 \n\
/* 0801b50c */ BL func_0801c8b8 \n\
/* 0801b510 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b512 */ BEQ branch_0801b548 \n\
/* 0801b514 */ LDR R0, =D_03004afc \n\
/* 0801b516 */ LDRH R1, [R0] \n\
/* 0801b518 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b51a */ LSLS R0, R0, 0x2 \n\
/* 0801b51c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b51e */ LSLS R0, R0, 0x10 \n\
/* 0801b520 */ LSRS R0, R0, 0x10 \n\
/* 0801b522 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801b524 */ LSRS R4, R0, 0x1F \n\
/* 0801b526 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b528 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b52a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b52c */ BEQ branch_0801b530 \n\
/* 0801b52e */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
 \n\
branch_0801b530: \n\
/* 0801b530 */ LDR R0, =D_030053b8 \n\
/* 0801b532 */ LDRH R1, [R0] \n\
/* 0801b534 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801b536 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b538 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b53a */ BEQ branch_0801b53e \n\
/* 0801b53c */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
 \n\
branch_0801b53e: \n\
/* 0801b53e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801b540 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801b542 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801b544 */ BEQ branch_0801b548 \n\
/* 0801b546 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
 \n\
branch_0801b548: \n\
/* 0801b548 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801b54a */ BEQ branch_0801b634 \n\
/* 0801b54c */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801b54e */ BHI branch_0801b564 \n\
/* 0801b550 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801b552 */ BEQ branch_0801b56e \n\
/* 0801b554 */ B branch_0801b65c \n\
\n\
.ltorg \n\
 \n\
branch_0801b564: \n\
/* 0801b564 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0801b566 */ BEQ branch_0801b64c \n\
/* 0801b568 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801b56a */ BEQ branch_0801b5e4 \n\
/* 0801b56c */ B branch_0801b65c \n\
 \n\
branch_0801b56e: \n\
/* 0801b56e */ LDR R5, =gCurrentSceneData \n\
/* 0801b570 */ LDR R0, [R5] \n\
/* 0801b572 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b574 */ LSLS R2, R2, 0x2 \n\
/* 0801b576 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b578 */ LDR R0, [R0] \n\
/* 0801b57a */ BL func_0800b118 \n\
/* 0801b57e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801b580 */ LDR R0, [R5] \n\
/* 0801b582 */ LDR R2, =0x48e \n\
/* 0801b584 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b586 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b588 */ LDRSH R0, [R0, R2] \n\
/* 0801b58a */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801b58c */ BEQ branch_0801b5e4 \n\
/* 0801b58e */ BL func_0801b4b4 \n\
/* 0801b592 */ LDR R1, =s_menu_kettei2_seqData \n\
/* 0801b594 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b596 */ BL play_sound_in_player \n\
/* 0801b59a */ LDR R0, =D_03005380 \n\
/* 0801b59c */ LDR R0, [R0] \n\
/* 0801b59e */ LDR R1, [R5] \n\
/* 0801b5a0 */ LDR R2, =0x48c \n\
/* 0801b5a2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b5a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b5a6 */ LDRSH R1, [R1, R2] \n\
/* 0801b5a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b5aa */ BL func_0804d770 \n\
/* 0801b5ae */ LDR R0, [R5] \n\
/* 0801b5b0 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b5b2 */ LSLS R1, R1, 0x2 \n\
/* 0801b5b4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b5b6 */ LDR R0, [R0] \n\
/* 0801b5b8 */ LDR R1, =anim_studio_selection_item \n\
/* 0801b5ba */ BL func_0800b4d8 \n\
/* 0801b5be */ LDR R0, [R5] \n\
/* 0801b5c0 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801b5c2 */ LSLS R2, R2, 0x2 \n\
/* 0801b5c4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b5c6 */ STRB R4, [R0] \n\
/* 0801b5c8 */ B branch_0801b65c \n\
\n\
.ltorg \n\
 \n\
branch_0801b5e4: \n\
/* 0801b5e4 */ LDR R1, =s_menu_cancel3_seqData \n\
/* 0801b5e6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801b5e8 */ BL play_sound_in_player \n\
/* 0801b5ec */ LDR R0, =D_03005380 \n\
/* 0801b5ee */ LDR R0, [R0] \n\
/* 0801b5f0 */ LDR R4, =gCurrentSceneData \n\
/* 0801b5f2 */ LDR R1, [R4] \n\
/* 0801b5f4 */ LDR R2, =0x48c \n\
/* 0801b5f6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801b5f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b5fa */ LDRSH R1, [R1, R2] \n\
/* 0801b5fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801b5fe */ BL func_0804d770 \n\
/* 0801b602 */ LDR R0, [R4] \n\
/* 0801b604 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b606 */ LSLS R1, R1, 0x2 \n\
/* 0801b608 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b60a */ LDR R0, [R0] \n\
/* 0801b60c */ LDR R1, =anim_studio_selection_item \n\
/* 0801b60e */ BL func_0800b4d8 \n\
/* 0801b612 */ LDR R0, [R4] \n\
/* 0801b614 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801b616 */ LSLS R2, R2, 0x2 \n\
/* 0801b618 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b61a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801b61c */ STRB R1, [R0] \n\
/* 0801b61e */ B branch_0801b65c \n\
\n\
.ltorg \n\
 \n\
branch_0801b634: \n\
/* 0801b634 */ LDR R0, =gCurrentSceneData \n\
/* 0801b636 */ LDR R0, [R0] \n\
/* 0801b638 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b63a */ LSLS R1, R1, 0x2 \n\
/* 0801b63c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b63e */ LDR R0, [R0] \n\
/* 0801b640 */ BL func_0800b140 \n\
/* 0801b644 */ B branch_0801b65c \n\
\n\
.ltorg \n\
 \n\
branch_0801b64c: \n\
/* 0801b64c */ LDR R0, =gCurrentSceneData \n\
/* 0801b64e */ LDR R0, [R0] \n\
/* 0801b650 */ MOVS R2, 0xD8 @ Set R2 to 0xD8 \n\
/* 0801b652 */ LSLS R2, R2, 0x2 \n\
/* 0801b654 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801b656 */ LDR R0, [R0] \n\
/* 0801b658 */ BL func_0800b21c \n\
 \n\
branch_0801b65c: \n\
/* 0801b65c */ POP {R4, R5} \n\
/* 0801b65e */ POP {R0} \n\
/* 0801b660 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
