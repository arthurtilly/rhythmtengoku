asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c1a8 \n\
/* 0800c1a8 */ LDR R0, =D_030053c0 \n\
/* 0800c1aa */ LDRH R0, [R0, 0xC] \n\
/* 0800c1ac */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
