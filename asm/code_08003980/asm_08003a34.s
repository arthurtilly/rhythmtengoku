asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a34 \n\
/* 08003a34 */ LDR R2, [R0] \n\
/* 08003a36 */ STRB R1, [R2] \n\
/* 08003a38 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a3a */ STR R2, [R0] \n\
/* 08003a3c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
