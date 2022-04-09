asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f330 \n\
/* 0802f330 */ PUSH {LR} \n\
/* 0802f332 */ BL func_0800bc40 \n\
/* 0802f336 */ POP {R0} \n\
/* 0802f338 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
