asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a8a0 \n\
/* 0801a8a0 */ PUSH {LR} \n\
/* 0801a8a2 */ BL func_08008628 \n\
/* 0801a8a6 */ BL func_08004058 \n\
/* 0801a8aa */ POP {R0} \n\
/* 0801a8ac */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
