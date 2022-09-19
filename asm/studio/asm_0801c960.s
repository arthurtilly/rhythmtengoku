asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c960 \n\
/* 0801c960 */ LDR R1, =D_0300154c \n\
/* 0801c962 */ STRB R0, [R1] \n\
/* 0801c964 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
