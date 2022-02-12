asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025be0 \n\
/* 08025be0 */ PUSH {LR} \n\
/* 08025be2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025be4 */ BL func_08025bec \n\
/* 08025be8 */ POP {R0} \n\
/* 08025bea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
