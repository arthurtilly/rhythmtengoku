asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ac90 \n\
/* 0800ac90 */ PUSH {LR} \n\
/* 0800ac92 */ LSLS R1, R1, 0x10 \n\
/* 0800ac94 */ LSRS R1, R1, 0x10 \n\
/* 0800ac96 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ac98 */ BEQ branch_0800ac9c \n\
/* 0800ac9a */ STRH R1, [R0, 0x2E] \n\
 \n\
branch_0800ac9c: \n\
/* 0800ac9c */ POP {R0} \n\
/* 0800ac9e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
