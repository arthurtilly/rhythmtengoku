asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017448 \n\
/* 08017448 */ LDR R1, =D_030046a4 \n\
/* 0801744a */ LDR R1, [R1] \n\
/* 0801744c */ ADDS R1, 0x7B @ Add 0x7B to R1 \n\
/* 0801744e */ STRB R0, [R1] \n\
/* 08017450 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
