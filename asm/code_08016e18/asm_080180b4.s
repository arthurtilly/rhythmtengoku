asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180b4 \n\
/* 080180b4 */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 080180b6 */ STRH R1, [R0] \n\
/* 080180b8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
