asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e4e0 \n\
/* 0801e4e0 */ PUSH {LR} \n\
/* 0801e4e2 */ BL func_08008628 \n\
/* 0801e4e6 */ BL func_08004058 \n\
/* 0801e4ea */ BL func_0801e154 \n\
/* 0801e4ee */ POP {R0} \n\
/* 0801e4f0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
