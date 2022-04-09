asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009394 \n\
/* 08009394 */ PUSH {LR} \n\
/* 08009396 */ BL func_0800936c \n\
/* 0800939a */ POP {R1} \n\
/* 0800939c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
