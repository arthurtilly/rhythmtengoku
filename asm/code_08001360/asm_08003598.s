asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003598 \n\
/* 08003598 */ STRH R1, [R0, 0x10] \n\
/* 0800359a */ STRH R2, [R0, 0x12] \n\
/* 0800359c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
