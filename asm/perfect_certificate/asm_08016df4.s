asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016df4 \n\
/* 08016df4 */ PUSH {LR} \n\
/* 08016df6 */ BL func_08008628 \n\
/* 08016dfa */ BL func_08004058 \n\
/* 08016dfe */ POP {R0} \n\
/* 08016e00 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
