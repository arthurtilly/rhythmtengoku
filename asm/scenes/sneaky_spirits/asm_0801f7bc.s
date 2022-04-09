asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f7bc \n\
/* 0801f7bc */ PUSH {LR} \n\
/* 0801f7be */ BL func_0801f17c \n\
/* 0801f7c2 */ BL func_0801f6d0 \n\
/* 0801f7c6 */ POP {R0} \n\
/* 0801f7c8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
