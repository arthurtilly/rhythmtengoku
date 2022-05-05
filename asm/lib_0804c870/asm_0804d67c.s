asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d67c \n\
/* 0804d67c */ PUSH {R4-R7, LR} \n\
/* 0804d67e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d680 */ LSLS R2, R2, 0x10 \n\
/* 0804d682 */ LSRS R7, R2, 0x10 \n\
/* 0804d684 */ LDR R2, =D_03004428 \n\
/* 0804d686 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0804d688 */ STRB R0, [R2] \n\
/* 0804d68a */ LSLS R1, R1, 0x10 \n\
/* 0804d68c */ ASRS R4, R1, 0x10 \n\
/* 0804d68e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d690 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d692 */ BL func_0804cc68 \n\
/* 0804d696 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d698 */ BNE branch_0804d6c0 \n\
/* 0804d69a */ LDR R0, [R5, 0x8] \n\
/* 0804d69c */ LSLS R1, R4, 0x4 \n\
/* 0804d69e */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d6a0 */ LSLS R6, R1, 0x2 \n\
/* 0804d6a2 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0804d6a4 */ LDRH R0, [R0, 0x6] \n\
/* 0804d6a6 */ CMP R0, R7 @ Check R0 - R7 \n\
/* 0804d6a8 */ BEQ branch_0804d6c0 \n\
/* 0804d6aa */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d6ac */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d6ae */ BL func_0804d05c \n\
/* 0804d6b2 */ LDR R0, [R5, 0x8] \n\
/* 0804d6b4 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0804d6b6 */ STRH R7, [R0, 0x6] \n\
/* 0804d6b8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d6ba */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d6bc */ BL func_0804cf38 \n\
 \n\
branch_0804d6c0: \n\
/* 0804d6c0 */ POP {R4-R7} \n\
/* 0804d6c2 */ POP {R0} \n\
/* 0804d6c4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
