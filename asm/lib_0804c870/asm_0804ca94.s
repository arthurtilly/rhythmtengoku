asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ca94 \n\
/* 0804ca94 */ LDR R1, =D_03004434 \n\
/* 0804ca96 */ STR R0, [R1] \n\
/* 0804ca98 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
