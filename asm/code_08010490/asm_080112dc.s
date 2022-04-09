asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080112dc \n\
/* 080112dc */ LDR R0, =D_030046a4 \n\
/* 080112de */ LDR R0, [R0] \n\
/* 080112e0 */ LDRB R0, [R0, 0x1C] \n\
/* 080112e2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
