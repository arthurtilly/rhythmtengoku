asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080191b8 \n\
/* 080191b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080191ba */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
