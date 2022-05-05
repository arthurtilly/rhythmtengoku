asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ca80 \n\
/* 0804ca80 */ LDR R2, =D_0300442c \n\
/* 0804ca82 */ STR R0, [R2] \n\
/* 0804ca84 */ LDR R0, =D_03004430 \n\
/* 0804ca86 */ STR R1, [R0] \n\
/* 0804ca88 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
