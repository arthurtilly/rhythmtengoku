asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011a08 \n\
/* 08011a08 */ PUSH {LR} \n\
/* 08011a0a */ BL func_08008628 \n\
/* 08011a0e */ BL func_08004058 \n\
/* 08011a12 */ POP {R0} \n\
/* 08011a14 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
