asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ac80 \n\
/* 0800ac80 */ PUSH {LR} \n\
/* 0800ac82 */ LSLS R1, R1, 0x10 \n\
/* 0800ac84 */ LSRS R1, R1, 0x10 \n\
/* 0800ac86 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ac88 */ BEQ branch_0800ac8c \n\
/* 0800ac8a */ STRH R1, [R0, 0x2C] \n\
 \n\
branch_0800ac8c: \n\
/* 0800ac8c */ POP {R0} \n\
/* 0800ac8e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
