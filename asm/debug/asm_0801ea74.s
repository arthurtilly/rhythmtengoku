asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ea74 \n\
/* 0801ea74 */ PUSH {LR} \n\
/* 0801ea76 */ BL func_08008628 \n\
/* 0801ea7a */ BL func_08004058 \n\
/* 0801ea7e */ POP {R0} \n\
/* 0801ea80 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
