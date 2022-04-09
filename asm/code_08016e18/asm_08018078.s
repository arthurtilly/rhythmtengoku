asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018078 \n\
/* 08018078 */ LDR R1, =D_030046a4 \n\
/* 0801807a */ LDR R1, [R1] \n\
/* 0801807c */ ADDS R1, 0x5E @ Add 0x5E to R1 \n\
/* 0801807e */ STRB R0, [R1] \n\
/* 08018080 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
