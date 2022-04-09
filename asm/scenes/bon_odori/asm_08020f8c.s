asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020f8c \n\
/* 08020f8c */ PUSH {LR} \n\
/* 08020f8e */ BL func_0800e128 \n\
/* 08020f92 */ POP {R0} \n\
/* 08020f94 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
