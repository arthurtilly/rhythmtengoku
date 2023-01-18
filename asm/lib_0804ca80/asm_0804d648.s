asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d648 \n\
/* 0804d648 */ PUSH {R4-R6, LR} \n\
/* 0804d64a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d64c */ LSLS R2, R2, 0x10 \n\
/* 0804d64e */ LSRS R6, R2, 0x10 \n\
/* 0804d650 */ LDR R2, =D_03004428 \n\
/* 0804d652 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0804d654 */ STRB R0, [R2] \n\
/* 0804d656 */ LSLS R1, R1, 0x10 \n\
/* 0804d658 */ ASRS R4, R1, 0x10 \n\
/* 0804d65a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d65c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d65e */ BL func_0804cc68 \n\
/* 0804d662 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d664 */ BNE branch_0804d672 \n\
/* 0804d666 */ LDR R1, [R5, 0x8] \n\
/* 0804d668 */ LSLS R0, R4, 0x4 \n\
/* 0804d66a */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d66c */ LSLS R0, R0, 0x2 \n\
/* 0804d66e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d670 */ STRH R6, [R0, 0x4] \n\
 \n\
branch_0804d672: \n\
/* 0804d672 */ POP {R4-R6} \n\
/* 0804d674 */ POP {R0} \n\
/* 0804d676 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
