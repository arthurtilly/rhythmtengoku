asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d820 \n\
/* 0804d820 */ PUSH {R4-R6, LR} \n\
/* 0804d822 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d824 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804d826 */ LDR R2, =D_03004428 \n\
/* 0804d828 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804d82a */ STRB R0, [R2] \n\
/* 0804d82c */ LSLS R1, R1, 0x10 \n\
/* 0804d82e */ ASRS R4, R1, 0x10 \n\
/* 0804d830 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d832 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d834 */ BL func_0804cc68 \n\
/* 0804d838 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d83a */ BNE branch_0804d84c \n\
/* 0804d83c */ LDR R0, [R5, 0x8] \n\
/* 0804d83e */ LSLS R1, R4, 0x4 \n\
/* 0804d840 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d842 */ LSLS R1, R1, 0x2 \n\
/* 0804d844 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d846 */ LDR R0, [R1, 0x10] \n\
/* 0804d848 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0804d84a */ STR R0, [R1, 0x10] \n\
 \n\
branch_0804d84c: \n\
/* 0804d84c */ POP {R4-R6} \n\
/* 0804d84e */ POP {R0} \n\
/* 0804d850 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
