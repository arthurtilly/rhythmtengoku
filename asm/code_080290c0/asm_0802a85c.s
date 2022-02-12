asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a85c \n\
/* 0802a85c */ PUSH {LR} \n\
/* 0802a85e */ BL func_0802a840 \n\
/* 0802a862 */ POP {R0} \n\
/* 0802a864 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
