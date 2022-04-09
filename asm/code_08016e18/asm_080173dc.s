asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080173dc \n\
/* 080173dc */ LDR R1, =D_030046a4 \n\
/* 080173de */ LDR R1, [R1] \n\
/* 080173e0 */ STR R0, [R1, 0x68] \n\
/* 080173e2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
