asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018098 \n\
/* 08018098 */ LDR R0, [R0, 0x54] \n\
/* 0801809a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
