asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804573c \n\
/* 0804573c */ PUSH {R4-R7, LR} \n\
/* 0804573e */ SUB SP, 0x14 \n\
/* 08045740 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08045742 */ MOVS R7, 0x90 @ Set R7 to 0x90 \n\
/* 08045744 */ LSLS R7, R7, 0xF \n\
 \n\
branch_08045746: \n\
/* 08045746 */ LDR R0, =D_03005380 \n\
/* 08045748 */ LDR R0, [R0] \n\
/* 0804574a */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0804574c */ STR R1, [SP] \n\
/* 0804574e */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08045750 */ LSLS R2, R2, 0x7 \n\
/* 08045752 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08045754 */ SUBS R1, R1, R6 @ Set R1 to R1 - R6 \n\
/* 08045756 */ LSLS R1, R1, 0x10 \n\
/* 08045758 */ LSRS R1, R1, 0x10 \n\
/* 0804575a */ STR R1, [SP, 0x4] \n\
/* 0804575c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804575e */ STR R1, [SP, 0x8] \n\
/* 08045760 */ STR R1, [SP, 0xC] \n\
/* 08045762 */ STR R1, [SP, 0x10] \n\
/* 08045764 */ LDR R1, =D_088adba4 \n\
/* 08045766 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045768 */ MOVS R3, 0x96 @ Set R3 to 0x96 \n\
/* 0804576a */ LSLS R3, R3, 0x1 \n\
/* 0804576c */ BL func_0804d160 \n\
/* 08045770 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08045772 */ LSLS R4, R4, 0x10 \n\
/* 08045774 */ LSRS R4, R4, 0x10 \n\
/* 08045776 */ LSRS R5, R7, 0x10 \n\
/* 08045778 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 0804577a */ BL func_0800c3a4 \n\
/* 0804577e */ LSLS R0, R0, 0x10 \n\
/* 08045780 */ LSRS R0, R0, 0x10 \n\
/* 08045782 */ LSLS R4, R4, 0x10 \n\
/* 08045784 */ ASRS R4, R4, 0x10 \n\
/* 08045786 */ LSLS R5, R5, 0x10 \n\
/* 08045788 */ ASRS R5, R5, 0x10 \n\
/* 0804578a */ STR R0, [SP] \n\
/* 0804578c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804578e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08045790 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08045792 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045794 */ BL func_0800e62c \n\
/* 08045798 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804579a */ LSLS R0, R0, 0xE \n\
/* 0804579c */ ADDS R7, R7, R0 @ Set R7 to R7 + R0 \n\
/* 0804579e */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080457a0 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 080457a2 */ BLS branch_08045746 \n\
/* 080457a4 */ ADD SP, 0x14 \n\
/* 080457a6 */ POP {R4-R7} \n\
/* 080457a8 */ POP {R0} \n\
/* 080457aa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
