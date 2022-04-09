asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180a4 \n\
/* 080180a4 */ LDR R0, [R0, 0x60] \n\
/* 080180a6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
