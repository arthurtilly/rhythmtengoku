asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080173e8 \n\
/* 080173e8 */ LDR R1, =D_030046a4 \n\
/* 080173ea */ LDR R1, [R1] \n\
/* 080173ec */ STR R0, [R1, 0x6C] \n\
/* 080173ee */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
