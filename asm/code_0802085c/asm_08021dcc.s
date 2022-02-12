asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021dcc \n\
/* 08021dcc */ PUSH {LR} \n\
/* 08021dce */ BL func_0800bc40 \n\
/* 08021dd2 */ POP {R0} \n\
/* 08021dd4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
