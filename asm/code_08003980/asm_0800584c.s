asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800584c \n\
/* 0800584c */ LDR R1, =D_03004ae8 \n\
/* 0800584e */ STRB R0, [R1] \n\
/* 08005850 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
