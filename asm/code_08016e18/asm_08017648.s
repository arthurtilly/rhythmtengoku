asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017648 \n\
/* 08017648 */ LDR R1, =D_030046a4 \n\
/* 0801764a */ LDR R1, [R1] \n\
/* 0801764c */ LDR R2, =0x4a5 \n\
/* 0801764e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08017650 */ STRB R0, [R1] \n\
/* 08017652 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
