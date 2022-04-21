asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a014 \n\
/* 0804a014 */ STR R1, [R0, 0x10] \n\
/* 0804a016 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
