asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180b0 \n\
/* 080180b0 */ STRH R1, [R0, 0xA] \n\
/* 080180b2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
