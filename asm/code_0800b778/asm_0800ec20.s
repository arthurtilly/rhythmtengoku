asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ec20 \n\
/* 0800ec20 */ LDR R2, =D_030053c0 \n\
/* 0800ec22 */ LDRB R1, [R2, 0x2] \n\
/* 0800ec24 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800ec26 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ec28 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ec2a */ STRB R0, [R2, 0x2] \n\
/* 0800ec2c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
