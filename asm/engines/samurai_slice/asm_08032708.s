asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032708 \n\
/* 08032708 */ PUSH {R4-R6, LR} \n\
/* 0803270a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803270c */ LDR R0, [R4, 0x10] \n\
/* 0803270e */ LDR R1, [R4, 0x18] \n\
/* 08032710 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08032712 */ STR R0, [R4, 0x10] \n\
/* 08032714 */ LDR R1, [R4, 0xC] \n\
/* 08032716 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08032718 */ LDR R0, =gCurrentEngineData \n\
/* 0803271a */ LDR R0, [R0] \n\
/* 0803271c */ MOVS R2, 0xE9 @ Set R2 to 0xE9 \n\
/* 0803271e */ LSLS R2, R2, 0x1 \n\
/* 08032720 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08032722 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08032724 */ LDRSH R0, [R0, R6] \n\
/* 08032726 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032728 */ BEQ branch_0803273e \n\
/* 0803272a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803272c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803272e */ BGE branch_08032732 \n\
/* 08032730 */ ADDS R0, R1, 0x3 @ Set R0 to R1 + 0x3 \n\
 \n\
branch_08032732: \n\
/* 08032732 */ ASRS R1, R0, 0x2 \n\
/* 08032734 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08032736 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08032738 */ BGE branch_0803273c \n\
/* 0803273a */ ADDS R0, R5, 0x3 @ Set R0 to R5 + 0x3 \n\
 \n\
branch_0803273c: \n\
/* 0803273c */ ASRS R5, R0, 0x2 \n\
 \n\
branch_0803273e: \n\
/* 0803273e */ LDR R2, [R4, 0x4] \n\
/* 08032740 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08032742 */ STR R2, [R4, 0x4] \n\
/* 08032744 */ LDR R3, [R4, 0x8] \n\
/* 08032746 */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 08032748 */ STR R3, [R4, 0x8] \n\
/* 0803274a */ LDR R5, =gSpriteHandler \n\
/* 0803274c */ LDR R0, [R5] \n\
/* 0803274e */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08032750 */ LDRSH R1, [R4, R6] \n\
/* 08032752 */ LSLS R2, R2, 0x8 \n\
/* 08032754 */ ASRS R2, R2, 0x10 \n\
/* 08032756 */ LSLS R3, R3, 0x8 \n\
/* 08032758 */ ASRS R3, R3, 0x10 \n\
/* 0803275a */ BL sprite_set_x_y \n\
/* 0803275e */ LDRB R0, [R4, 0x1E] \n\
/* 08032760 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032762 */ BEQ branch_0803277c \n\
/* 08032764 */ LDR R1, [R4, 0x14] \n\
/* 08032766 */ LDRB R0, [R4, 0x1D] \n\
/* 08032768 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803276a */ STRB R0, [R4, 0x1D] \n\
/* 0803276c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803276e */ LDRSB R0, [R4, R0] \n\
/* 08032770 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08032772 */ LSLS R1, R1, 0x1 \n\
/* 08032774 */ MOVS R2, 0x1D @ Set R2 to 0x1D \n\
/* 08032776 */ LDRSB R2, [R4, R2] \n\
/* 08032778 */ BL set_affine_scale_rotation \n\
 \n\
branch_0803277c: \n\
/* 0803277c */ LDR R0, [R4, 0x8] \n\
/* 0803277e */ ASRS R0, R0, 0x8 \n\
/* 08032780 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08032782 */ CMP R0, 0xEE @ Compare R0 and 0xEE \n\
/* 08032784 */ BLS branch_08032796 \n\
/* 08032786 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08032788 */ STRB R0, [R4, 0x1C] \n\
/* 0803278a */ LDR R0, [R5] \n\
/* 0803278c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803278e */ LDRSH R1, [R4, R2] \n\
/* 08032790 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032792 */ BL sprite_set_visible \n\
 \n\
branch_08032796: \n\
/* 08032796 */ POP {R4-R6} \n\
/* 08032798 */ POP {R0} \n\
/* 0803279a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
