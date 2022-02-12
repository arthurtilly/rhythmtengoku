asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802ad20 \n\
/* 0802ad20 */ PUSH {LR} \n\
/* 0802ad22 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ad24 */ BL func_0802ac8c \n\
/* 0802ad28 */ POP {R0} \n\
/* 0802ad2a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
