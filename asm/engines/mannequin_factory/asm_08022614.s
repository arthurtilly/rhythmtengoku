asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022614 \n\
/* 08022614 */ PUSH {R4-R6, LR} \n\
/* 08022616 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08022618 */ LDRB R0, [R6] \n\
/* 0802261a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802261c */ BEQ branch_08022692 \n\
/* 0802261e */ LDR R0, =gCurrentEngineData \n\
/* 08022620 */ LDR R0, [R0] \n\
/* 08022622 */ ADDS R0, 0xB2 @ Add 0xB2 to R0 \n\
/* 08022624 */ LDRB R2, [R0] \n\
/* 08022626 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08022628 */ BNE branch_08022654 \n\
/* 0802262a */ LDRH R1, [R6, 0xE] \n\
/* 0802262c */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0802262e */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08022630 */ ASRS R0, R0, 0x8 \n\
/* 08022632 */ STRH R0, [R6, 0xE] \n\
/* 08022634 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 08022636 */ LDRSH R1, [R6, R0] \n\
/* 08022638 */ LSLS R0, R1, 0x4 \n\
/* 0802263a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802263c */ LSLS R0, R0, 0x4 \n\
/* 0802263e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08022640 */ ASRS R0, R0, 0x8 \n\
/* 08022642 */ STRH R0, [R6, 0x12] \n\
/* 08022644 */ MOVS R1, 0x12 @ Set R1 to 0x12 \n\
/* 08022646 */ LDRSH R0, [R6, R1] \n\
/* 08022648 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802264a */ BGE branch_0802264e \n\
/* 0802264c */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0802264e: \n\
/* 0802264e */ CMP R0, 0xBF @ Compare R0 and 0xBF \n\
/* 08022650 */ BGT branch_08022654 \n\
/* 08022652 */ STRH R2, [R6, 0x12] \n\
 \n\
branch_08022654: \n\
/* 08022654 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08022656 */ BL func_080225bc \n\
/* 0802265a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802265c */ LDR R5, =gSpriteHandler \n\
/* 0802265e */ LDR R0, [R5] \n\
/* 08022660 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022662 */ LDRSH R1, [R6, R2] \n\
/* 08022664 */ LSLS R4, R4, 0x10 \n\
/* 08022666 */ ASRS R4, R4, 0x10 \n\
/* 08022668 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802266a */ BL sprite_set_x \n\
/* 0802266e */ LDR R0, [R5] \n\
/* 08022670 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022672 */ LDRSH R1, [R6, R2] \n\
/* 08022674 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022676 */ BL sprite_set_x \n\
/* 0802267a */ LDR R0, [R5] \n\
/* 0802267c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802267e */ LDRSH R1, [R6, R2] \n\
/* 08022680 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022682 */ BL sprite_set_x \n\
/* 08022686 */ LDR R0, [R5] \n\
/* 08022688 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0802268a */ LDRSH R1, [R6, R2] \n\
/* 0802268c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802268e */ BL sprite_set_x \n\
 \n\
branch_08022692: \n\
/* 08022692 */ POP {R4-R6} \n\
/* 08022694 */ POP {R0} \n\
/* 08022696 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
