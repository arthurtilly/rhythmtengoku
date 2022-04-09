asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fea8 \n\
/* 0800fea8 */ PUSH {LR} \n\
/* 0800feaa */ LSLS R1, R1, 0x10 \n\
/* 0800feac */ LSRS R1, R1, 0x10 \n\
/* 0800feae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800feb0 */ BEQ branch_0800feb8 \n\
/* 0800feb2 */ STRH R1, [R0, 0xE] \n\
/* 0800feb4 */ BL func_0800f904 \n\
 \n\
branch_0800feb8: \n\
/* 0800feb8 */ POP {R0} \n\
/* 0800feba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
