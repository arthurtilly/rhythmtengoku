asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d860 \n\
/* 0801d860 */ LDR R1, =D_0300155c \n\
/* 0801d862 */ STRB R0, [R1] \n\
/* 0801d864 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
