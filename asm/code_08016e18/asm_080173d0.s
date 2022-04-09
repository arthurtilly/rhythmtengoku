asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080173d0 \n\
/* 080173d0 */ LDR R1, =D_030046a4 \n\
/* 080173d2 */ LDR R1, [R1] \n\
/* 080173d4 */ STRB R0, [R1, 0x9] \n\
/* 080173d6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
