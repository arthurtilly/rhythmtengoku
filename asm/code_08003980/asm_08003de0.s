asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003de0 \n\
/* 08003de0 */ LDRB R2, [R0] \n\
/* 08003de2 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08003de4 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08003de6 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08003de8 */ STRB R1, [R0] \n\
/* 08003dea */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
