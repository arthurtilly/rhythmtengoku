asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d95c \n\
/* 0801d95c */ LDR R1, =D_030053c0 \n\
/* 0801d95e */ STR R0, [R1, 0x30] \n\
/* 0801d960 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
