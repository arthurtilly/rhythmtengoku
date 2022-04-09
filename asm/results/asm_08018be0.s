asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018be0 \n\
/* 08018be0 */ PUSH {LR} \n\
/* 08018be2 */ BL func_08008628 \n\
/* 08018be6 */ BL func_08004058 \n\
/* 08018bea */ POP {R0} \n\
/* 08018bec */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
