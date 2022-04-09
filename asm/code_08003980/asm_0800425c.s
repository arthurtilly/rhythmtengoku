asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800425c \n\
/* 0800425c */ LDR R2, =D_030008ac \n\
/* 0800425e */ STRB R0, [R2] \n\
/* 08004260 */ LDR R0, =D_030008ad \n\
/* 08004262 */ STRB R1, [R0] \n\
/* 08004264 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
