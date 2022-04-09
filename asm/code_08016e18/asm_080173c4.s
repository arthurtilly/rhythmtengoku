asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080173c4 \n\
/* 080173c4 */ LDR R1, =D_030046a4 \n\
/* 080173c6 */ LDR R1, [R1] \n\
/* 080173c8 */ STRB R0, [R1, 0x8] \n\
/* 080173ca */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
