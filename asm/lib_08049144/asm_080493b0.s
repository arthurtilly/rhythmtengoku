asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080493b0 \n\
/* 080493b0 */ LDR R1, =D_03005b88 \n\
/* 080493b2 */ LDR R1, [R1] \n\
/* 080493b4 */ LSLS R0, R0, 0x5 \n\
/* 080493b6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080493b8 */ LDRB R2, [R0] \n\
/* 080493ba */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080493bc */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080493be */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 080493c0 */ STRB R1, [R0] \n\
/* 080493c2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
