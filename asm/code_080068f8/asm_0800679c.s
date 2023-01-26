asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800679c \n\
/* 0800679c */ LDRH R1, [R0] \n\
/* 0800679e */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 080067a0 */ STRH R1, [R0] \n\
/* 080067a2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
