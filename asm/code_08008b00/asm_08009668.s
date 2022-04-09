asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009668 \n\
/* 08009668 */ LDR R1, =D_030046b0 \n\
/* 0800966a */ STRH R0, [R1] \n\
/* 0800966c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
