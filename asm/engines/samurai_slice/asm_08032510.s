asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032510 \n\
/* 08032510 */ PUSH {R4-R7, LR} \n\
/* 08032512 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08032514 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08032516 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08032518 */ PUSH {R5-R7} \n\
/* 0803251a */ SUB SP, 0xC \n\
/* 0803251c */ LSLS R0, R0, 0x18 \n\
/* 0803251e */ LSRS R0, R0, 0x18 \n\
/* 08032520 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08032522 */ LDR R0, =gCurrentEngineData \n\
/* 08032524 */ LDR R0, [R0] \n\
/* 08032526 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08032528 */ ADDS R7, 0x90 @ Add 0x90 to R7 \n\
/* 0803252a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803252c */ B branch_08032542 \n\
\n\
.ltorg \n\
 \n\
branch_08032534: \n\
/* 08032534 */ ADDS R7, 0x20 @ Add 0x20 to R7 \n\
/* 08032536 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 08032538 */ LSLS R0, R0, 0x18 \n\
/* 0803253a */ LSRS R3, R0, 0x18 \n\
/* 0803253c */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 0803253e */ BLS branch_08032542 \n\
/* 08032540 */ B branch_080326ee \n\
 \n\
branch_08032542: \n\
/* 08032542 */ LDRB R0, [R7, 0x1C] \n\
/* 08032544 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032546 */ BNE branch_08032534 \n\
/* 08032548 */ CMP R3, 0x9 @ Compare R3 and 0x9 \n\
/* 0803254a */ BLS branch_0803254e \n\
/* 0803254c */ B branch_080326ee \n\
 \n\
branch_0803254e: \n\
/* 0803254e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08032550 */ STRB R0, [R7, 0x1C] \n\
/* 08032552 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08032554 */ CMP R3, 0x7 @ Compare R3 and 0x7 \n\
/* 08032556 */ BHI branch_0803255a \n\
/* 08032558 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0803255a: \n\
/* 0803255a */ STRB R0, [R7, 0x1E] \n\
/* 0803255c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803255e */ STRB R0, [R7, 0x1D] \n\
/* 08032560 */ STR R1, [R7, 0x4] \n\
/* 08032562 */ STR R2, [R7, 0x8] \n\
/* 08032564 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08032566 */ BL agb_random \n\
/* 0803256a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803256c */ LDR R1, =gCurrentEngineData \n\
/* 0803256e */ LDR R0, [R1] \n\
/* 08032570 */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 08032572 */ LSLS R2, R2, 0x1 \n\
/* 08032574 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08032576 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08032578 */ LDRH R1, [R0] \n\
/* 0803257a */ LSLS R0, R1, 0x1 \n\
/* 0803257c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803257e */ LSLS R0, R0, 0x15 \n\
/* 08032580 */ LSRS R0, R0, 0x10 \n\
/* 08032582 */ BL agb_random \n\
/* 08032586 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08032588 */ BL get_beatscript_tempo \n\
/* 0803258c */ LDR R2, =D_0805a5d4 \n\
/* 0803258e */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08032590 */ LSLS R3, R3, 0x1 \n\
/* 08032592 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 08032594 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08032596 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 08032598 */ LSLS R1, R1, 0x2 \n\
/* 0803259a */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0803259c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803259e */ LSLS R5, R5, 0x10 \n\
/* 080325a0 */ LSRS R5, R5, 0x10 \n\
/* 080325a2 */ LDR R3, [R1] \n\
/* 080325a4 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 080325a6 */ LSLS R4, R4, 0x10 \n\
/* 080325a8 */ LSRS R4, R4, 0x10 \n\
/* 080325aa */ LDR R2, =gCurrentEngineData \n\
/* 080325ac */ LDR R1, [R2] \n\
/* 080325ae */ ADD R1, R8 @ Add R8 to R1 \n\
/* 080325b0 */ LDRH R2, [R1] \n\
/* 080325b2 */ LSLS R1, R2, 0x1 \n\
/* 080325b4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080325b6 */ LSLS R1, R1, 0x4 \n\
/* 080325b8 */ SUBS R4, R4, R1 @ Set R4 to R4 - R1 \n\
/* 080325ba */ SUBS R4, 0x40 @ Subtract 0x40 from R4 \n\
/* 080325bc */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 080325be */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 080325c0 */ STR R0, [R7, 0xC] \n\
/* 080325c2 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 080325c4 */ BL __divsi3 \n\
/* 080325c8 */ STR R0, [R7, 0xC] \n\
/* 080325ca */ MOV R5, R9 @ Set R5 to R9 \n\
/* 080325cc */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080325ce */ CMP R3, 0x5 @ Compare R3 and 0x5 \n\
/* 080325d0 */ BHI branch_0803264c \n\
/* 080325d2 */ LSLS R0, R3, 0x2 \n\
/* 080325d4 */ LDR R1, =jtbl_080325e8 \n\
/* 080325d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080325d8 */ LDR R0, [R0] \n\
/* 080325da */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080325e8: \n\
.word jump_08032634 \n\
.word jump_08032600 \n\
.word jump_08032600 \n\
.word jump_08032600 \n\
.word jump_08032618 \n\
.word jump_08032600 \n\
jump_08032600: \n\
/* 08032600 */ LDR R0, =gCurrentEngineData \n\
/* 08032602 */ LDR R0, [R0] \n\
/* 08032604 */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 08032606 */ LSLS R1, R1, 0x1 \n\
/* 08032608 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803260a */ LDRH R0, [R0] \n\
/* 0803260c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803260e */ LSLS R6, R0, 0x6 \n\
/* 08032610 */ B branch_0803264e \n\
\n\
.ltorg \n\
jump_08032618: \n\
/* 08032618 */ LDR R0, =gCurrentEngineData \n\
/* 0803261a */ LDR R0, [R0] \n\
/* 0803261c */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 0803261e */ LSLS R2, R2, 0x1 \n\
/* 08032620 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08032622 */ LDRH R1, [R0] \n\
/* 08032624 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08032626 */ LSLS R0, R1, 0x2 \n\
/* 08032628 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803262a */ LSLS R6, R0, 0x4 \n\
/* 0803262c */ B branch_0803264e \n\
\n\
.ltorg \n\
jump_08032634: \n\
/* 08032634 */ LDR R0, =gCurrentEngineData \n\
/* 08032636 */ LDR R0, [R0] \n\
/* 08032638 */ MOVS R3, 0xEC @ Set R3 to 0xEC \n\
/* 0803263a */ LSLS R3, R3, 0x1 \n\
/* 0803263c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803263e */ LDRH R1, [R0] \n\
/* 08032640 */ MOVS R0, 0x66 @ Set R0 to 0x66 \n\
/* 08032642 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08032644 */ MULS R6, R0 @ Multiply R6 by R0 \n\
/* 08032646 */ B branch_0803264e \n\
\n\
.ltorg \n\
 \n\
branch_0803264c: \n\
/* 0803264c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0803264e: \n\
/* 0803264e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08032650 */ LSLS R0, R0, 0x1 \n\
/* 08032652 */ BL agb_random \n\
/* 08032656 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08032658 */ BL get_beatscript_tempo \n\
/* 0803265c */ LDR R1, =D_0805a5d4 \n\
/* 0803265e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08032660 */ ADD R5, R10 @ Add R10 to R5 \n\
/* 08032662 */ LSLS R5, R5, 0x2 \n\
/* 08032664 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08032666 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 08032668 */ LSLS R4, R4, 0x10 \n\
/* 0803266a */ LSRS R4, R4, 0x10 \n\
/* 0803266c */ LDR R1, [R1] \n\
/* 0803266e */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08032670 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08032672 */ SUBS R2, 0x80 @ Subtract 0x80 from R2 \n\
/* 08032674 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032676 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08032678 */ STR R0, [R7, 0x10] \n\
/* 0803267a */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0803267c */ BL __divsi3 \n\
/* 08032680 */ STR R0, [R7, 0x10] \n\
/* 08032682 */ BL get_beatscript_tempo \n\
/* 08032686 */ LSLS R0, R0, 0x3 \n\
/* 08032688 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0803268a */ BL __udivsi3 \n\
/* 0803268e */ STR R0, [R7, 0x14] \n\
/* 08032690 */ BL get_beatscript_tempo \n\
/* 08032694 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08032696 */ LSLS R0, R1, 0x1 \n\
/* 08032698 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803269a */ LSLS R0, R0, 0x4 \n\
/* 0803269c */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0803269e */ BL __udivsi3 \n\
/* 080326a2 */ STR R0, [R7, 0x18] \n\
/* 080326a4 */ LDR R4, =gSpriteHandler \n\
/* 080326a6 */ LDR R0, [R4] \n\
/* 080326a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080326aa */ LDRSH R1, [R7, R2] \n\
/* 080326ac */ ADD R5, R9 @ Add R9 to R5 \n\
/* 080326ae */ LDR R2, [R5] \n\
/* 080326b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080326b2 */ STR R3, [SP] \n\
/* 080326b4 */ STR R3, [SP, 0x4] \n\
/* 080326b6 */ STR R3, [SP, 0x8] \n\
/* 080326b8 */ BL sprite_set_anim \n\
/* 080326bc */ LDR R0, [R4] \n\
/* 080326be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080326c0 */ LDRSH R1, [R7, R3] \n\
/* 080326c2 */ LDR R2, [R7, 0x4] \n\
/* 080326c4 */ LSLS R2, R2, 0x8 \n\
/* 080326c6 */ ASRS R2, R2, 0x10 \n\
/* 080326c8 */ LDR R3, [R7, 0x8] \n\
/* 080326ca */ LSLS R3, R3, 0x8 \n\
/* 080326cc */ ASRS R3, R3, 0x10 \n\
/* 080326ce */ BL sprite_set_x_y \n\
/* 080326d2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080326d4 */ LDRSB R0, [R7, R0] \n\
/* 080326d6 */ MOVS R2, 0x1D @ Set R2 to 0x1D \n\
/* 080326d8 */ LDRSB R2, [R7, R2] \n\
/* 080326da */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080326dc */ LSLS R1, R1, 0x1 \n\
/* 080326de */ BL set_affine_scale_rotation \n\
/* 080326e2 */ LDR R0, [R4] \n\
/* 080326e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080326e6 */ LDRSH R1, [R7, R2] \n\
/* 080326e8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080326ea */ BL sprite_set_visible \n\
 \n\
branch_080326ee: \n\
/* 080326ee */ ADD SP, 0xC \n\
/* 080326f0 */ POP {R3-R5} \n\
/* 080326f2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080326f4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080326f6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080326f8 */ POP {R4-R7} \n\
/* 080326fa */ POP {R0} \n\
/* 080326fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
