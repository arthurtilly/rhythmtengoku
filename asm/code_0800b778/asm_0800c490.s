asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c490 \n\
/* 0800c490 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800c492 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
