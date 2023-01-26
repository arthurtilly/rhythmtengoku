asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d0a8 \n\
/* 0801d0a8 */ PUSH {LR} \n\
/* 0801d0aa */ BL func_08008628 \n\
/* 0801d0ae */ BL func_08004058 \n\
/* 0801d0b2 */ POP {R0} \n\
/* 0801d0b4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
