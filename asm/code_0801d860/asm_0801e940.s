asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e940 \n\
/* 0801e940 */ PUSH {LR} \n\
/* 0801e942 */ BL func_08008628 \n\
/* 0801e946 */ BL func_08004058 \n\
/* 0801e94a */ POP {R0} \n\
/* 0801e94c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
