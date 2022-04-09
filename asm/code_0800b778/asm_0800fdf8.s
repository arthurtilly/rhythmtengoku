asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fdf8 \n\
/* 0800fdf8 */ PUSH {LR} \n\
/* 0800fdfa */ LSLS R1, R1, 0x10 \n\
/* 0800fdfc */ LSRS R1, R1, 0x10 \n\
/* 0800fdfe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe00 */ BEQ branch_0800fe08 \n\
/* 0800fe02 */ STRH R1, [R0, 0xA] \n\
/* 0800fe04 */ BL func_0800f904 \n\
 \n\
branch_0800fe08: \n\
/* 0800fe08 */ POP {R0} \n\
/* 0800fe0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
