asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c398 \n\
/* 0800c398 */ LDR R0, =D_030053c0 \n\
/* 0800c39a */ LDR R0, [R0, 0x14] \n\
/* 0800c39c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
