asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800861c \n\
/* 0800861c */ LDR R1, =D_0300536c  \n\
/* 0800861e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008620 */ STR R0, [R1] \n\
/* 08008622 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
