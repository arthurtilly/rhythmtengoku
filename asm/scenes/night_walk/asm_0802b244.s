asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b244 \n\
/* 0802b244 */ LDR R1, =D_030055d0 \n\
/* 0802b246 */ LDR R1, [R1] \n\
/* 0802b248 */ LDR R2, =0x00000555 \n\
/* 0802b24a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b24c */ STRB R0, [R1] \n\
/* 0802b24e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
