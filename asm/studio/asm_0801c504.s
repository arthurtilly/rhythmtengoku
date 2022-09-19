asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c504 \n\
/* 0801c504 */ LDR R0, =D_03001544 \n\
/* 0801c506 */ LDRB R0, [R0] \n\
/* 0801c508 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
