asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036b3c \n\
/* 08036b3c */ PUSH {LR} \n\
/* 08036b3e */ BL func_08036aa4 \n\
/* 08036b42 */ POP {R0} \n\
/* 08036b44 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
