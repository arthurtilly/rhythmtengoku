asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003b28 \n\
/* 08003b28 */ LDRB R2, [R0] \n\
/* 08003b2a */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08003b2c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08003b2e */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08003b30 */ STRB R1, [R0] \n\
/* 08003b32 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
