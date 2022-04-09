asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008f68 \n\
/* 08008f68 */ LDR R0, =D_030010f4 \n\
/* 08008f6a */ LDR R0, [R0] \n\
/* 08008f6c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
