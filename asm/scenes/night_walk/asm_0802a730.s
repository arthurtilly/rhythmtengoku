asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a730 \n\
/* 0802a730 */ PUSH {R4, R5, LR} \n\
/* 0802a732 */ SUB SP, 0xC \n\
/* 0802a734 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802a736 */ LDR R5, =D_03005380 \n\
/* 0802a738 */ LDR R0, [R5] \n\
/* 0802a73a */ LSLS R4, R4, 0x10 \n\
/* 0802a73c */ ASRS R4, R4, 0x10 \n\
/* 0802a73e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802a740 */ STR R1, [SP] \n\
/* 0802a742 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802a744 */ STR R1, [SP, 0x4] \n\
/* 0802a746 */ STR R1, [SP, 0x8] \n\
/* 0802a748 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802a74a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a74c */ BL func_0804d8f8 \n\
/* 0802a750 */ LDR R0, [R5] \n\
/* 0802a752 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802a754 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a756 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a758 */ BL func_0804daa8 \n\
/* 0802a75c */ LDR R0, [R5] \n\
/* 0802a75e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802a760 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0802a762 */ BL func_0804ddb0 \n\
/* 0802a766 */ LDR R5, [R5] \n\
/* 0802a768 */ LSLS R0, R0, 0x10 \n\
/* 0802a76a */ LSRS R0, R0, 0x10 \n\
/* 0802a76c */ BL func_08001980 \n\
/* 0802a770 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0802a772 */ LSLS R2, R2, 0x18 \n\
/* 0802a774 */ ASRS R2, R2, 0x18 \n\
/* 0802a776 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802a778 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802a77a */ BL func_0804cebc \n\
/* 0802a77e */ ADD SP, 0xC \n\
/* 0802a780 */ POP {R4, R5} \n\
/* 0802a782 */ POP {R0} \n\
/* 0802a784 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
