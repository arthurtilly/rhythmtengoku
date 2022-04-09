asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b230 \n\
/* 0802b230 */ LDR R1, =D_030055d0 \n\
/* 0802b232 */ LDR R1, [R1] \n\
/* 0802b234 */ LDR R2, =0x00000554 \n\
/* 0802b236 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b238 */ STRB R0, [R1] \n\
/* 0802b23a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
