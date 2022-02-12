asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025a58 \n\
/* 08025a58 */ PUSH {LR} \n\
/* 08025a5a */ BL func_0802555c \n\
/* 08025a5e */ POP {R0} \n\
/* 08025a60 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
