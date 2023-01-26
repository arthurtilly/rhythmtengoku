asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c5c0 \n\
/* 0803c5c0 */ PUSH {LR} \n\
/* 0803c5c2 */ BL func_0803c52c \n\
/* 0803c5c6 */ POP {R0} \n\
/* 0803c5c8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
