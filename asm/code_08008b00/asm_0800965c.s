asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800965c \n\
/* 0800965c */ LDR R0, =D_03004af4 \n\
/* 0800965e */ LDRH R0, [R0] \n\
/* 08009660 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
