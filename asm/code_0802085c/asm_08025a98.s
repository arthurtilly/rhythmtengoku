asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025a98 \n\
/* 08025a98 */ PUSH {LR} \n\
/* 08025a9a */ BL func_08025a64 \n\
/* 08025a9e */ POP {R0} \n\
/* 08025aa0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
