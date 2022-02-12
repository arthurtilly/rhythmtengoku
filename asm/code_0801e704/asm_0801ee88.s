asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ee88 \n\
/* 0801ee88 */ PUSH {LR} \n\
/* 0801ee8a */ BL func_08008628 \n\
/* 0801ee8e */ BL func_08004058 \n\
/* 0801ee92 */ POP {R0} \n\
/* 0801ee94 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
