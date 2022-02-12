asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f71c \n\
/* 0801f71c */ PUSH {R4, R5, LR} \n\
/* 0801f71e */ SUB SP, 0xC \n\
/* 0801f720 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801f722 */ LDR R4, =D_030055d0 \n\
/* 0801f724 */ LDR R1, [R4] \n\
/* 0801f726 */ LDR R0, [R1] \n\
/* 0801f728 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0801f72a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f72c */ LDRSH R1, [R1, R2] \n\
/* 0801f72e */ BL func_08007b04 \n\
/* 0801f732 */ LDR R0, [R4] \n\
/* 0801f734 */ LDR R0, [R0] \n\
/* 0801f736 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f738 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f73a */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0801f73c */ BL func_08004b98 \n\
/* 0801f740 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801f742 */ LDR R0, =D_03005380 \n\
/* 0801f744 */ LDR R0, [R0] \n\
/* 0801f746 */ LDR R1, [R4] \n\
/* 0801f748 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 0801f74a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f74c */ LDRSH R1, [R1, R3] \n\
/* 0801f74e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801f750 */ STR R3, [SP] \n\
/* 0801f752 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f754 */ STR R3, [SP, 0x4] \n\
/* 0801f756 */ STR R3, [SP, 0x8] \n\
/* 0801f758 */ BL func_0804d8f8 \n\
/* 0801f75c */ ADD SP, 0xC \n\
/* 0801f75e */ POP {R4, R5} \n\
/* 0801f760 */ POP {R0} \n\
/* 0801f762 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
