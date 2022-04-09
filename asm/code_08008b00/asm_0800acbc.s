asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800acbc \n\
/* 0800acbc */ PUSH {LR} \n\
/* 0800acbe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800acc0 */ BEQ branch_0800acc4 \n\
/* 0800acc2 */ STRB R1, [R0, 0x6] \n\
 \n\
branch_0800acc4: \n\
/* 0800acc4 */ POP {R0} \n\
/* 0800acc6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
