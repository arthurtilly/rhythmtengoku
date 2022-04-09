asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e830 \n\
/* 0800e830 */ PUSH {LR} \n\
/* 0800e832 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800e834 */ LDR R0, [R1] \n\
/* 0800e836 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e838 */ BEQ branch_0800e84c \n\
/* 0800e83a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800e83c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800e83e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
 \n\
branch_0800e840: \n\
/* 0800e840 */ LDMIA R1!, {R0} \n\
/* 0800e842 */ LDR R0, [R0, 0xC] \n\
/* 0800e844 */ STRH R2, [R0] \n\
/* 0800e846 */ LDR R0, [R1] \n\
/* 0800e848 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e84a */ BNE branch_0800e840 \n\
 \n\
branch_0800e84c: \n\
/* 0800e84c */ POP {R0} \n\
/* 0800e84e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
