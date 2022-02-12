asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802ad2c \n\
/* 0802ad2c */ PUSH {LR} \n\
/* 0802ad2e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ad30 */ BL func_0802ac8c \n\
/* 0802ad34 */ POP {R0} \n\
/* 0802ad36 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
