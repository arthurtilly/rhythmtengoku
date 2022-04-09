asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020290 \n\
/* 08020290 */ LDR R1, =D_030055d0 \n\
/* 08020292 */ LDR R1, [R1] \n\
/* 08020294 */ LDR R2, =0x00000159 \n\
/* 08020296 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08020298 */ STRB R0, [R1] \n\
/* 0802029a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
