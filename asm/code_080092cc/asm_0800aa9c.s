asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aa9c \n\
/* 0800aa9c */ PUSH {LR} \n\
/* 0800aa9e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800aaa0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800aaa2 */ BEQ branch_0800aabc \n\
/* 0800aaa4 */ LDRB R0, [R2, 0x2] \n\
/* 0800aaa6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aaa8 */ BNE branch_0800aabc \n\
/* 0800aaaa */ LDR R1, [R2, 0x34] \n\
/* 0800aaac */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800aaae */ BEQ branch_0800aabc \n\
/* 0800aab0 */ LDRB R0, [R1] \n\
/* 0800aab2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aab4 */ BEQ branch_0800aabc \n\
/* 0800aab6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800aab8 */ BL func_0800aa4c \n\
 \n\
branch_0800aabc: \n\
/* 0800aabc */ POP {R0} \n\
/* 0800aabe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
