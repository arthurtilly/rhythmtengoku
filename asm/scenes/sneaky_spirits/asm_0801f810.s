asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f810 \n\
/* 0801f810 */ PUSH {R4-R6, LR} \n\
/* 0801f812 */ SUB SP, 0xC \n\
/* 0801f814 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f816 */ BL func_0800c604 \n\
/* 0801f81a */ LDR R6, =D_030055d0 \n\
/* 0801f81c */ LDR R0, [R6] \n\
/* 0801f81e */ ADDS R0, 0x8A @ Add 0x8A to R0 \n\
/* 0801f820 */ LDRB R0, [R0] \n\
/* 0801f822 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f824 */ BEQ branch_0801f83c \n\
/* 0801f826 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f828 */ LSLS R0, R0, 0x1 \n\
/* 0801f82a */ BL func_0800be88 \n\
/* 0801f82e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f830 */ BL func_0800c0c4 \n\
/* 0801f834 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f836 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f838 */ BL func_0800c0f8 \n\
 \n\
branch_0801f83c: \n\
/* 0801f83c */ LDR R4, =D_03005380 \n\
/* 0801f83e */ LDR R0, [R4] \n\
/* 0801f840 */ LDR R1, [R6] \n\
/* 0801f842 */ ADDS R1, 0x7E @ Add 0x7E to R1 \n\
/* 0801f844 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f846 */ LDRSH R1, [R1, R2] \n\
/* 0801f848 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f84a */ BL func_0804d770 \n\
/* 0801f84e */ LDR R0, [R4] \n\
/* 0801f850 */ LDR R1, [R6] \n\
/* 0801f852 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0801f854 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f856 */ LDRSH R1, [R1, R2] \n\
/* 0801f858 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f85a */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0801f85c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801f85e */ STR R5, [SP] \n\
/* 0801f860 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f862 */ BL func_0804dae0 \n\
/* 0801f866 */ LDR R0, [R4] \n\
/* 0801f868 */ LDR R1, [R6] \n\
/* 0801f86a */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0801f86c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f86e */ LDRSH R1, [R1, R2] \n\
/* 0801f870 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801f872 */ BL func_0804cebc \n\
/* 0801f876 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801f878 */ BL func_0801f194 \n\
/* 0801f87c */ LDR R0, [R4] \n\
/* 0801f87e */ LDR R1, [R6] \n\
/* 0801f880 */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801f882 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f884 */ LDRSH R1, [R1, R2] \n\
/* 0801f886 */ LDR R2, =D_088a1158 \n\
/* 0801f888 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801f88a */ STR R3, [SP] \n\
/* 0801f88c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0801f88e */ STR R3, [SP, 0x4] \n\
/* 0801f890 */ STR R5, [SP, 0x8] \n\
/* 0801f892 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f894 */ BL func_0804d8f8 \n\
/* 0801f898 */ LDR R5, [R4] \n\
/* 0801f89a */ LDR R0, [R6] \n\
/* 0801f89c */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 0801f89e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f8a0 */ LDRSH R4, [R0, R1] \n\
/* 0801f8a2 */ BL func_0800c1a8 \n\
/* 0801f8a6 */ LSLS R0, R0, 0x8 \n\
/* 0801f8a8 */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0801f8aa */ BL __udivsi3 \n\
/* 0801f8ae */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801f8b0 */ LSLS R2, R2, 0x10 \n\
/* 0801f8b2 */ LSRS R2, R2, 0x10 \n\
/* 0801f8b4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801f8b6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801f8b8 */ BL func_0804dcb8 \n\
/* 0801f8bc */ ADD SP, 0xC \n\
/* 0801f8be */ POP {R4-R6} \n\
/* 0801f8c0 */ POP {R0} \n\
/* 0801f8c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
