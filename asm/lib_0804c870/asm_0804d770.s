asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d770 \n\
/* 0804d770 */ PUSH {R4-R6, LR} \n\
/* 0804d772 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d774 */ LSLS R2, R2, 0x10 \n\
/* 0804d776 */ LSRS R6, R2, 0x10 \n\
/* 0804d778 */ LDR R2, =D_03004428 \n\
/* 0804d77a */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804d77c */ STRB R0, [R2] \n\
/* 0804d77e */ LSLS R1, R1, 0x10 \n\
/* 0804d780 */ ASRS R4, R1, 0x10 \n\
/* 0804d782 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d784 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d786 */ BL func_0804cc68 \n\
/* 0804d78a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d78c */ BNE branch_0804d7aa \n\
/* 0804d78e */ LDR R0, [R5, 0x8] \n\
/* 0804d790 */ LSLS R1, R4, 0x4 \n\
/* 0804d792 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d794 */ LSLS R1, R1, 0x2 \n\
/* 0804d796 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d798 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d79a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0804d79c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804d79e */ LDRB R3, [R1] \n\
/* 0804d7a0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804d7a2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d7a4 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804d7a6 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804d7a8 */ STRB R0, [R1] \n\
 \n\
branch_0804d7aa: \n\
/* 0804d7aa */ POP {R4-R6} \n\
/* 0804d7ac */ POP {R0} \n\
/* 0804d7ae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
