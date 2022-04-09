asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c394 \n\
/* 0800c394 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800c396 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
