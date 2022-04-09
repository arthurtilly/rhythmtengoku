asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ed3c \n\
/* 0801ed3c */ PUSH {LR} \n\
/* 0801ed3e */ BL func_08008628 \n\
/* 0801ed42 */ BL func_08004058 \n\
/* 0801ed46 */ POP {R0} \n\
/* 0801ed48 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
