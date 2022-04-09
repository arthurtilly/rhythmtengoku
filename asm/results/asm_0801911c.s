asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801911c \n\
/* 0801911c */ LDR R1, =D_03001330 \n\
/* 0801911e */ STR R0, [R1] \n\
/* 08019120 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
