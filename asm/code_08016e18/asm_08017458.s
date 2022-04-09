asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017458 \n\
/* 08017458 */ LDR R1, =D_030046a4 \n\
/* 0801745a */ LDR R1, [R1] \n\
/* 0801745c */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0801745e */ STR R0, [R1] \n\
/* 08017460 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
