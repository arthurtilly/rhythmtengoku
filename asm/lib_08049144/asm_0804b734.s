asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b734 \n\
/* 0804b734 */ PUSH {R4, R5, LR} \n\
/* 0804b736 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804b738 */ LSLS R1, R1, 0x10 \n\
/* 0804b73a */ LSRS R5, R1, 0x10 \n\
/* 0804b73c */ LSLS R2, R2, 0x10 \n\
/* 0804b73e */ LSRS R1, R2, 0x10 \n\
/* 0804b740 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0804b742 */ BEQ branch_0804b76e \n\
/* 0804b744 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0804b746 */ BGT branch_0804b74e \n\
/* 0804b748 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804b74a */ BEQ branch_0804b764 \n\
/* 0804b74c */ B branch_0804b7c2 \n\
 \n\
branch_0804b74e: \n\
/* 0804b74e */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0804b750 */ BGT branch_0804b7c2 \n\
/* 0804b752 */ LDRB R0, [R4, 0x3] \n\
/* 0804b754 */ LSLS R0, R0, 0x1A \n\
/* 0804b756 */ LSRS R0, R0, 0x1D \n\
/* 0804b758 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b75a */ BNE branch_0804b796 \n\
/* 0804b75c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b75e */ LSLS R0, R0, 0x8 \n\
/* 0804b760 */ STRH R0, [R4, 0x28] \n\
/* 0804b762 */ B branch_0804b796 \n\
 \n\
branch_0804b764: \n\
/* 0804b764 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b766 */ LSLS R0, R0, 0x8 \n\
/* 0804b768 */ STRH R0, [R4, 0x28] \n\
/* 0804b76a */ STRH R5, [R4, 0x2A] \n\
/* 0804b76c */ B branch_0804b7c2 \n\
 \n\
branch_0804b76e: \n\
/* 0804b76e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b770 */ BNE branch_0804b774 \n\
/* 0804b772 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0804b774: \n\
/* 0804b774 */ LDRB R0, [R4, 0x3] \n\
/* 0804b776 */ LSLS R0, R0, 0x1A \n\
/* 0804b778 */ LSRS R0, R0, 0x1D \n\
/* 0804b77a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b77c */ BNE branch_0804b780 \n\
/* 0804b77e */ STRH R0, [R4, 0x28] \n\
 \n\
branch_0804b780: \n\
/* 0804b780 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b782 */ LSLS R0, R0, 0x8 \n\
/* 0804b784 */ BL __divsi3 \n\
/* 0804b788 */ STRH R0, [R4, 0x2A] \n\
/* 0804b78a */ LDRB R1, [R4, 0x1] \n\
/* 0804b78c */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0804b78e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b790 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b792 */ STRB R0, [R4, 0x1] \n\
/* 0804b794 */ B branch_0804b7c2 \n\
 \n\
branch_0804b796: \n\
/* 0804b796 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b798 */ BEQ branch_0804b7a6 \n\
/* 0804b79a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b79c */ LSLS R0, R0, 0x8 \n\
/* 0804b79e */ BL __divsi3 \n\
/* 0804b7a2 */ STRH R0, [R4, 0x2A] \n\
/* 0804b7a4 */ B branch_0804b7c2 \n\
 \n\
branch_0804b7a6: \n\
/* 0804b7a6 */ STRH R1, [R4, 0x28] \n\
/* 0804b7a8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b7aa */ STRH R0, [R4, 0x2A] \n\
/* 0804b7ac */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0804b7ae */ BNE branch_0804b7ba \n\
/* 0804b7b0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804b7b2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b7b4 */ BL func_0804b560 \n\
/* 0804b7b8 */ B branch_0804b7c2 \n\
 \n\
branch_0804b7ba: \n\
/* 0804b7ba */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804b7bc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804b7be */ BL func_0804b574 \n\
 \n\
branch_0804b7c2: \n\
/* 0804b7c2 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0804b7c4 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0804b7c6 */ LSLS R2, R5, 0x3 \n\
/* 0804b7c8 */ LDRB R1, [R4, 0x3] \n\
/* 0804b7ca */ MOVS R0, 0x39 @ Set R0 to 0x39 \n\
/* 0804b7cc */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b7ce */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b7d0 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804b7d2 */ STRB R0, [R4, 0x3] \n\
/* 0804b7d4 */ POP {R4, R5} \n\
/* 0804b7d6 */ POP {R0} \n\
/* 0804b7d8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
