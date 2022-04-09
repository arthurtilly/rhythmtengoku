asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe0c \n\
/* 0800fe0c */ PUSH {LR} \n\
/* 0800fe0e */ LSLS R1, R1, 0x10 \n\
/* 0800fe10 */ LSRS R1, R1, 0x10 \n\
/* 0800fe12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe14 */ BEQ branch_0800fe1c \n\
/* 0800fe16 */ STRH R1, [R0, 0xC] \n\
/* 0800fe18 */ BL func_0800f904 \n\
 \n\
branch_0800fe1c: \n\
/* 0800fe1c */ POP {R0} \n\
/* 0800fe1e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
