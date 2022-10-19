asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023d6c \n\
/* 08023d6c */ PUSH {LR} \n\
/* 08023d6e */ BL func_0800bc40 \n\
/* 08023d72 */ POP {R0} \n\
/* 08023d74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
