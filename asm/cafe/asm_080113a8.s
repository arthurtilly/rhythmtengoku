asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080113a8 \n\
/* 080113a8 */ LDR R0, =D_030046a4 \n\
/* 080113aa */ LDR R0, [R0] \n\
/* 080113ac */ LDRB R0, [R0, 0x1D] \n\
/* 080113ae */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
