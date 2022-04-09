asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b634 \n\
/* 0800b634 */ PUSH {R4-R7, LR} \n\
/* 0800b636 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b638 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800b63a */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800b63c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800b63e */ LDRSH R1, [R5, R0] \n\
/* 0800b640 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800b642 */ LDRSH R0, [R4, R2] \n\
/* 0800b644 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0800b646 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800b648 */ LDRSH R1, [R6, R7] \n\
/* 0800b64a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800b64c */ LDRSH R0, [R3, R7] \n\
/* 0800b64e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800b650 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0800b652 */ LDRSH R0, [R3, R7] \n\
/* 0800b654 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800b656 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0800b658 */ BGE branch_0800b690 \n\
/* 0800b65a */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 0800b65c */ LDRSH R0, [R4, R7] \n\
/* 0800b65e */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800b660 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b662 */ BGE branch_0800b690 \n\
/* 0800b664 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800b666 */ LDRSH R1, [R5, R0] \n\
/* 0800b668 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0800b66a */ LDRSH R0, [R4, R2] \n\
/* 0800b66c */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0800b66e */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 0800b670 */ LDRSH R1, [R6, R5] \n\
/* 0800b672 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0800b674 */ LDRSH R0, [R3, R7] \n\
/* 0800b676 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800b678 */ MOVS R5, 0x6 @ Set R5 to 0x6 \n\
/* 0800b67a */ LDRSH R0, [R3, R5] \n\
/* 0800b67c */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800b67e */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0800b680 */ BGE branch_0800b690 \n\
/* 0800b682 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 0800b684 */ LDRSH R0, [R4, R7] \n\
/* 0800b686 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800b688 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800b68a */ BGE branch_0800b690 \n\
/* 0800b68c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800b68e */ B branch_0800b692 \n\
 \n\
branch_0800b690: \n\
/* 0800b690 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800b692: \n\
/* 0800b692 */ POP {R4-R7} \n\
/* 0800b694 */ POP {R1} \n\
/* 0800b696 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
