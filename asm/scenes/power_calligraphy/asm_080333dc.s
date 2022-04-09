asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080333dc \n\
/* 080333dc */ LDR R1, =D_030055d0 \n\
/* 080333de */ LDR R1, [R1] \n\
/* 080333e0 */ STRB R0, [R1, 0xA] \n\
/* 080333e2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
