asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b550 \n\
/* 0800b550 */ PUSH {LR} \n\
/* 0800b552 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b554 */ BEQ branch_0800b55c \n\
/* 0800b556 */ MOVS R1, 0x2A @ Set R1 to 0x2A \n\
/* 0800b558 */ LDRSH R0, [R0, R1] \n\
/* 0800b55a */ B branch_0800b560 \n\
 \n\
branch_0800b55c: \n\
/* 0800b55c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800b55e */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800b560: \n\
/* 0800b560 */ POP {R1} \n\
/* 0800b562 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
