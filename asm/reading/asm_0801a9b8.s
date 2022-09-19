asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a9b8 \n\
/* 0801a9b8 */ PUSH {LR} \n\
/* 0801a9ba */ BL func_08008628 \n\
/* 0801a9be */ BL func_08004058 \n\
/* 0801a9c2 */ POP {R0} \n\
/* 0801a9c4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
