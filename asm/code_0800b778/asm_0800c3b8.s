asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c3b8 \n\
/* 0800c3b8 */ LDR R0, =D_03001310 \n\
/* 0800c3ba */ LDR R0, [R0] \n\
/* 0800c3bc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
