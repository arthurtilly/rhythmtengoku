asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801daf8 \n\
/* 0801daf8 */ LDR R1, =D_030055e0 \n\
/* 0801dafa */ STR R0, [R1, 0x4] \n\
/* 0801dafc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
