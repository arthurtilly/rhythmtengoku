asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003384 \n\
/* 08003384 */ LDRB R2, [R0] \n\
/* 08003386 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08003388 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800338a */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800338c */ STRB R1, [R0] \n\
/* 0800338e */ LDRH R2, [R0] \n\
/* 08003390 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08003392 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08003394 */ STRH R1, [R0] \n\
/* 08003396 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
