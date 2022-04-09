asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080177c8 \n\
/* 080177c8 */ LDR R1, =D_030046a4 \n\
/* 080177ca */ LDR R1, [R1] \n\
/* 080177cc */ LDR R2, =0x5b7 \n\
/* 080177ce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080177d0 */ STRB R0, [R1] \n\
/* 080177d2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
