asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801732c \n\
/* 0801732c */ LDR R0, =D_030046a4 \n\
/* 0801732e */ LDR R0, [R0] \n\
/* 08017330 */ LDR R0, [R0, 0x14] \n\
/* 08017332 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
