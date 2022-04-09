asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017908 \n\
/* 08017908 */ LDR R1, =D_030046a4 \n\
/* 0801790a */ LDR R1, [R1] \n\
/* 0801790c */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0801790e */ STRB R0, [R1] \n\
/* 08017910 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
