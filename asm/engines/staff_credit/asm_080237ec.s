asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080237ec \n\
/* 080237ec */ LDR R1, =D_030055d0 \n\
/* 080237ee */ LDR R1, [R1] \n\
/* 080237f0 */ STRB R0, [R1, 0x2] \n\
/* 080237f2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
