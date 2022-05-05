asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae18 \n\
/* 0804ae18 */ STR R1, [R0, 0xC] \n\
/* 0804ae1a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
