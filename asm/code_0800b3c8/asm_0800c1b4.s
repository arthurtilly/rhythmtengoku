asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c1b4 \n\
/* 0800c1b4 */ LDR R0, =D_030053c0 \n\
/* 0800c1b6 */ LDRH R0, [R0, 0x10] \n\
/* 0800c1b8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
