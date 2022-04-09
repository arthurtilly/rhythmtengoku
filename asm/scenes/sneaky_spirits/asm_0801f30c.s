asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f30c \n\
/* 0801f30c */ PUSH {LR} \n\
/* 0801f30e */ BL func_0801f194 \n\
/* 0801f312 */ POP {R0} \n\
/* 0801f314 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
