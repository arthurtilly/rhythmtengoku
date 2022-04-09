asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080139a0 \n\
/* 080139a0 */ LDR R0, =D_03001324 \n\
/* 080139a2 */ LDRB R0, [R0] \n\
/* 080139a4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
