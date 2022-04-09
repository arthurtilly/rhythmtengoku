asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004714 \n\
/* 08004714 */ PUSH {R4-R7, LR} \n\
/* 08004716 */ SUB SP, 0x4 \n\
/* 08004718 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800471a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800471c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800471e */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 08004720 */ LSLS R7, R7, 0x1 \n\
 \n\
branch_08004722: \n\
/* 08004722 */ STR R7, [SP] \n\
/* 08004724 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08004726 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08004728 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0800472a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800472c */ BL func_0800186c \n\
/* 08004730 */ ADDS R5, 0x40 @ Add 0x40 to R5 \n\
/* 08004732 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08004734 */ LSLS R0, R0, 0x3 \n\
/* 08004736 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08004738 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800473a */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0800473c */ BLS branch_08004722 \n\
/* 0800473e */ ADD SP, 0x4 \n\
/* 08004740 */ POP {R4-R7} \n\
/* 08004742 */ POP {R0} \n\
/* 08004744 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
