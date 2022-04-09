asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d6c4 \n\
/* 0801d6c4 */ LDR R1, =D_03001558 \n\
/* 0801d6c6 */ STRB R0, [R1] \n\
/* 0801d6c8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
