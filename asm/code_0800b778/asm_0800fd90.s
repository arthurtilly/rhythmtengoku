asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fd90 \n\
/* 0800fd90 */ PUSH {LR} \n\
/* 0800fd92 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fd94 */ BEQ branch_0800fd9c \n\
/* 0800fd96 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800fd98 */ LDRSH R0, [R0, R1] \n\
/* 0800fd9a */ B branch_0800fda0 \n\
 \n\
branch_0800fd9c: \n\
/* 0800fd9c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800fd9e */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800fda0: \n\
/* 0800fda0 */ POP {R1} \n\
/* 0800fda2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
