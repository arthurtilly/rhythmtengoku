asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004748 \n\
/* 08004748 */ PUSH {R4-R7, LR} \n\
/* 0800474a */ SUB SP, 0x4 \n\
/* 0800474c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800474e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08004750 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08004752 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 08004754 */ LSLS R7, R7, 0x1 \n\
 \n\
branch_08004756: \n\
/* 08004756 */ STR R7, [SP] \n\
/* 08004758 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800475a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800475c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0800475e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08004760 */ BL dma3_set \n\
/* 08004764 */ ADDS R5, 0x40 @ Add 0x40 to R5 \n\
/* 08004766 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08004768 */ LSLS R0, R0, 0x3 \n\
/* 0800476a */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800476c */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800476e */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 08004770 */ BLS branch_08004756 \n\
/* 08004772 */ ADD SP, 0x4 \n\
/* 08004774 */ POP {R4-R7} \n\
/* 08004776 */ POP {R0} \n\
/* 08004778 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
