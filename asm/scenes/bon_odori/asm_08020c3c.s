asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020c3c \n\
/* 08020c3c */ LDR R1, =D_030055d0 \n\
/* 08020c3e */ LDR R1, [R1] \n\
/* 08020c40 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08020c42 */ STRH R0, [R1, 0x3C] \n\
/* 08020c44 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
