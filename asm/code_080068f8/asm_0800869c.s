asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800869c \n\
/* 0800869c */ PUSH {LR} \n\
/* 0800869e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080086a0 */ LDR R0, =D_0300536c  \n\
/* 080086a2 */ LDR R1, [R0] \n\
/* 080086a4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080086a6 */ BEQ branch_080086be \n\
 \n\
branch_080086a8: \n\
/* 080086a8 */ LDR R0, [R1] \n\
/* 080086aa */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080086ac */ BNE branch_080086b8 \n\
/* 080086ae */ ADDS R0, R1, 0x4 @ Set R0 to R1 + 0x4 \n\
/* 080086b0 */ B branch_080086c0 \n\
\n\
.ltorg \n\
 \n\
branch_080086b8: \n\
/* 080086b8 */ LDR R1, [R1, 0x14] \n\
/* 080086ba */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080086bc */ BNE branch_080086a8 \n\
 \n\
branch_080086be: \n\
/* 080086be */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
 \n\
branch_080086c0: \n\
/* 080086c0 */ POP {R1} \n\
/* 080086c2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
