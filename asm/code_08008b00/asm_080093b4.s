asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080093b4 \n\
/* 080093b4 */ LDR R0, =D_0300119d \n\
/* 080093b6 */ LDRB R0, [R0] \n\
/* 080093b8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
