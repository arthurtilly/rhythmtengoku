asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f8ec \n\
/* 0800f8ec */ PUSH {LR} \n\
/* 0800f8ee */ BL func_0800f22c \n\
/* 0800f8f2 */ POP {R0} \n\
/* 0800f8f4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
