asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080093a4 \n\
/* 080093a4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080093a6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
