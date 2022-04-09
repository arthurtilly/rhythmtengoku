asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180a8 \n\
/* 080180a8 */ LDRB R0, [R0, 0x8] \n\
/* 080180aa */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
