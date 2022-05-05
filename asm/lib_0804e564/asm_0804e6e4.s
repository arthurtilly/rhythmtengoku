asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e6e4 \n\
/* 0804e6e4 */ PUSH {R4-R6, LR} \n\
/* 0804e6e6 */ LDR R0, =D_0300443c \n\
/* 0804e6e8 */ LDR R2, [R0] \n\
/* 0804e6ea */ LDRH R1, [R2, 0x22] \n\
/* 0804e6ec */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804e6ee */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e6f0 */ BEQ branch_0804e772 \n\
/* 0804e6f2 */ LDR R1, [R2, 0x4] \n\
/* 0804e6f4 */ LDR R0, [R2, 0x18] \n\
/* 0804e6f6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e6f8 */ BCS branch_0804e6fc \n\
/* 0804e6fa */ STR R1, [R2, 0x18] \n\
 \n\
branch_0804e6fc: \n\
/* 0804e6fc */ LDR R2, [R6] \n\
/* 0804e6fe */ LDR R0, [R2, 0x14] \n\
/* 0804e700 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e702 */ BLS branch_0804e706 \n\
/* 0804e704 */ STR R1, [R2, 0x14] \n\
 \n\
branch_0804e706: \n\
/* 0804e706 */ LDR R4, [R6] \n\
/* 0804e708 */ LDR R0, [R4, 0x1C] \n\
/* 0804e70a */ ADDS R3, R0, R1 @ Set R3 to R0 + R1 \n\
/* 0804e70c */ STR R3, [R4, 0x1C] \n\
/* 0804e70e */ LDRH R0, [R4, 0x10] \n\
/* 0804e710 */ ADDS R2, R0, 0x1 @ Set R2 to R0 + 0x1 \n\
/* 0804e712 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804e714 */ STRH R2, [R4, 0x10] \n\
/* 0804e716 */ LDR R0, [R4, 0x14] \n\
/* 0804e718 */ LDR R1, [R4, 0x18] \n\
/* 0804e71a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804e71c */ CMP R0, 0x27 @ Compare R0 and 0x27 \n\
/* 0804e71e */ BHI branch_0804e748 \n\
/* 0804e720 */ LSLS R0, R2, 0x10 \n\
/* 0804e722 */ LSRS R0, R0, 0x10 \n\
/* 0804e724 */ CMP R0, 0x1D @ Compare R0 and 0x1D \n\
/* 0804e726 */ BLS branch_0804e76a \n\
/* 0804e728 */ LDRH R1, [R4, 0x10] \n\
/* 0804e72a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804e72c */ BL __udivsi3 \n\
/* 0804e730 */ STR R0, [R4, 0x8] \n\
/* 0804e732 */ STRH R5, [R4, 0x22] \n\
/* 0804e734 */ STRH R5, [R4, 0x10] \n\
/* 0804e736 */ LDR R0, =0x7fffffff \n\
/* 0804e738 */ STR R0, [R4, 0x18] \n\
/* 0804e73a */ STR R5, [R4, 0x14] \n\
/* 0804e73c */ STR R5, [R4, 0x1C] \n\
/* 0804e73e */ B branch_0804e772 \n\
\n\
.ltorg \n\
 \n\
branch_0804e748: \n\
/* 0804e748 */ LDRH R1, [R4, 0x12] \n\
/* 0804e74a */ LSLS R0, R2, 0x10 \n\
/* 0804e74c */ LSRS R0, R0, 0x10 \n\
/* 0804e74e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0804e750 */ BCS branch_0804e75e \n\
/* 0804e752 */ STRH R2, [R4, 0x12] \n\
/* 0804e754 */ LDRH R1, [R4, 0x10] \n\
/* 0804e756 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804e758 */ BL __udivsi3 \n\
/* 0804e75c */ STR R0, [R4, 0x8] \n\
 \n\
branch_0804e75e: \n\
/* 0804e75e */ LDR R0, [R6] \n\
/* 0804e760 */ STRH R5, [R0, 0x10] \n\
/* 0804e762 */ LDR R1, =0x7fffffff \n\
/* 0804e764 */ STR R1, [R0, 0x18] \n\
/* 0804e766 */ STR R5, [R0, 0x14] \n\
/* 0804e768 */ STR R5, [R0, 0x1C] \n\
 \n\
branch_0804e76a: \n\
/* 0804e76a */ LDR R1, [R6] \n\
/* 0804e76c */ LDRH R0, [R1, 0x22] \n\
/* 0804e76e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0804e770 */ STRH R0, [R1, 0x22] \n\
 \n\
branch_0804e772: \n\
/* 0804e772 */ POP {R4-R6} \n\
/* 0804e774 */ POP {R0} \n\
/* 0804e776 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
