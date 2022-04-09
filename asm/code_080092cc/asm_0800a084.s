asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a084 \n\
/* 0800a084 */ LDR R1, =D_0300121c \n\
/* 0800a086 */ STR R0, [R1] \n\
/* 0800a088 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
