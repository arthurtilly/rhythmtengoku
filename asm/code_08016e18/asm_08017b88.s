asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017b88 \n\
/* 08017b88 */ LDR R1, =D_030046a4 \n\
/* 08017b8a */ LDR R1, [R1] \n\
/* 08017b8c */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 08017b8e */ STRB R0, [R1] \n\
/* 08017b90 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
