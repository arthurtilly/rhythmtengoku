asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035e88 \n\
/* 08035e88 */ PUSH {LR} \n\
/* 08035e8a */ BL func_0803698c \n\
/* 08035e8e */ POP {R0} \n\
/* 08035e90 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
