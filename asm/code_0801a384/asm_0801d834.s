asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d834 \n\
/* 0801d834 */ PUSH {LR} \n\
/* 0801d836 */ BL func_0801d438 \n\
/* 0801d83a */ BL func_08008628 \n\
/* 0801d83e */ BL func_08004058 \n\
/* 0801d842 */ POP {R0} \n\
/* 0801d844 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
