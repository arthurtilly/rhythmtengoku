asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080175a0 \n\
/* 080175a0 */ LDR R1, =D_030046a4 \n\
/* 080175a2 */ LDR R1, [R1] \n\
/* 080175a4 */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 080175a6 */ STRH R0, [R1] \n\
/* 080175a8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
