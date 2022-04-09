asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bd1c \n\
/* 0800bd1c */ LDR R0, =D_030053c0 \n\
/* 0800bd1e */ LDRB R0, [R0, 0x1] \n\
/* 0800bd20 */ LSLS R0, R0, 0x1F \n\
/* 0800bd22 */ LSRS R0, R0, 0x1F \n\
/* 0800bd24 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
