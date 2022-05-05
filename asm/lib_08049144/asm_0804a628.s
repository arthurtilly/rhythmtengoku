asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a628 \n\
/* 0804a628 */ PUSH {R4-R6, LR} \n\
/* 0804a62a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804a62c */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0804a62e */ LSLS R3, R3, 0x18 \n\
/* 0804a630 */ LSRS R4, R3, 0x18 \n\
/* 0804a632 */ BL func_0804a3fc \n\
/* 0804a636 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a638 */ BGE branch_0804a654 \n\
/* 0804a63a */ BL func_0804a434 \n\
/* 0804a63e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a640 */ BGE branch_0804a654 \n\
/* 0804a642 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a644 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804a646 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0804a648 */ BL func_0804a4e0 \n\
/* 0804a64c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a64e */ BGE branch_0804a654 \n\
/* 0804a650 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804a652 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804a654: \n\
/* 0804a654 */ POP {R4-R6} \n\
/* 0804a656 */ POP {R1} \n\
/* 0804a658 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
