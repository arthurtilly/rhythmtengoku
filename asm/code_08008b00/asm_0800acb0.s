asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800acb0 \n\
/* 0800acb0 */ PUSH {LR} \n\
/* 0800acb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800acb4 */ BEQ branch_0800acb8 \n\
/* 0800acb6 */ STRB R1, [R0, 0x5] \n\
 \n\
branch_0800acb8: \n\
/* 0800acb8 */ POP {R0} \n\
/* 0800acba */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
