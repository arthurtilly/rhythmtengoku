asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d858 \n\
/* 0804d858 */ PUSH {R4-R6, LR} \n\
/* 0804d85a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d85c */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804d85e */ LDR R2, =D_03004428 \n\
/* 0804d860 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0804d862 */ STRB R0, [R2] \n\
/* 0804d864 */ LSLS R1, R1, 0x10 \n\
/* 0804d866 */ ASRS R4, R1, 0x10 \n\
/* 0804d868 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d86a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d86c */ BL func_0804cc68 \n\
/* 0804d870 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d872 */ BNE branch_0804d884 \n\
/* 0804d874 */ LDR R0, [R5, 0x8] \n\
/* 0804d876 */ LSLS R1, R4, 0x4 \n\
/* 0804d878 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d87a */ LSLS R1, R1, 0x2 \n\
/* 0804d87c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d87e */ LDR R0, [R1, 0x10] \n\
/* 0804d880 */ BICS R0, R6 @ Clear bits in R6 from R0 \n\
/* 0804d882 */ STR R0, [R1, 0x10] \n\
 \n\
branch_0804d884: \n\
/* 0804d884 */ POP {R4-R6} \n\
/* 0804d886 */ POP {R0} \n\
/* 0804d888 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
