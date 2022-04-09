asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033834 \n\
/* 08033834 */ PUSH {R4-R7, LR} \n\
/* 08033836 */ SUB SP, 0x14 \n\
/* 08033838 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803383a */ LDR R6, =D_030055d0 \n\
/* 0803383c */ LDR R0, [R6] \n\
/* 0803383e */ MOVS R7, 0xD5 @ Set R7 to 0xD5 \n\
/* 08033840 */ LSLS R7, R7, 0x1 \n\
/* 08033842 */ ADDS R1, R0, R7 @ Set R1 to R0 + R7 \n\
/* 08033844 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033846 */ LDRSH R0, [R1, R2] \n\
/* 08033848 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803384a */ BLT branch_0803387a \n\
/* 0803384c */ LDR R4, =D_03005380 \n\
/* 0803384e */ LDR R0, [R4] \n\
/* 08033850 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033852 */ LDRSH R1, [R1, R2] \n\
/* 08033854 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08033856 */ BL func_0804ddb0 \n\
/* 0803385a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803385c */ BL func_0800a068 \n\
/* 08033860 */ LDR R0, [R4] \n\
/* 08033862 */ LDR R1, [R6] \n\
/* 08033864 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08033866 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08033868 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803386a */ LDRSH R1, [R1, R2] \n\
/* 0803386c */ BL func_0804d504 \n\
/* 08033870 */ LDR R0, [R6] \n\
/* 08033872 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08033874 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08033876 */ LDR R0, =0xffff \n\
/* 08033878 */ STRH R0, [R1] \n\
 \n\
branch_0803387a: \n\
/* 0803387a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803387c */ BEQ branch_080338de \n\
/* 0803387e */ LDR R1, =D_06017000 \n\
/* 08033880 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033882 */ LSLS R2, R2, 0x4 \n\
/* 08033884 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08033886 */ LSLS R0, R0, 0x2 \n\
/* 08033888 */ STR R0, [SP] \n\
/* 0803388a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803388c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0803388e */ BL func_080018e0 \n\
/* 08033892 */ BL func_0800c3b8 \n\
/* 08033896 */ STR R5, [SP] \n\
/* 08033898 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803389a */ STR R1, [SP, 0x4] \n\
/* 0803389c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803389e */ STR R4, [SP, 0x8] \n\
/* 080338a0 */ ADDS R1, 0xFF @ Add 0xFF to R1 \n\
/* 080338a2 */ STR R1, [SP, 0xC] \n\
/* 080338a4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080338a6 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080338a8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080338aa */ BL func_0800a004 \n\
/* 080338ae */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080338b0 */ LDR R5, =D_03005380 \n\
/* 080338b2 */ LDR R0, [R5] \n\
/* 080338b4 */ MOVS R1, 0x92 @ Set R1 to 0x92 \n\
/* 080338b6 */ STR R1, [SP] \n\
/* 080338b8 */ LDR R1, =0x46d4 \n\
/* 080338ba */ STR R1, [SP, 0x4] \n\
/* 080338bc */ STR R4, [SP, 0x8] \n\
/* 080338be */ STR R4, [SP, 0xC] \n\
/* 080338c0 */ STR R4, [SP, 0x10] \n\
/* 080338c2 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 080338c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080338c6 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080338c8 */ BL func_0804d160 \n\
/* 080338cc */ LDR R1, [R6] \n\
/* 080338ce */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 080338d0 */ STRH R0, [R1] \n\
/* 080338d2 */ LDR R0, [R5] \n\
/* 080338d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080338d6 */ LDRSH R1, [R1, R2] \n\
/* 080338d8 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 080338da */ BL func_0804d8c4 \n\
 \n\
branch_080338de: \n\
/* 080338de */ ADD SP, 0x14 \n\
/* 080338e0 */ POP {R4-R7} \n\
/* 080338e2 */ POP {R0} \n\
/* 080338e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
