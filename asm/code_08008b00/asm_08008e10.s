asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008e10 \n\
/* 08008e10 */ PUSH {R4-R6, LR} \n\
/* 08008e12 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08008e14 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08008e16 */ BL func_08008dcc \n\
/* 08008e1a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08008e1c */ CMP R4, R5 @ Check R4 - R5 \n\
/* 08008e1e */ BCS branch_08008e38 \n\
 \n\
branch_08008e20: \n\
/* 08008e20 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08008e22 */ BL func_08001980 \n\
/* 08008e26 */ ADDS R2, R6, R4 @ Set R2 to R6 + R4 \n\
/* 08008e28 */ LDRB R3, [R2] \n\
/* 08008e2a */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08008e2c */ LDRB R1, [R0] \n\
/* 08008e2e */ STRB R1, [R2] \n\
/* 08008e30 */ STRB R3, [R0] \n\
/* 08008e32 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08008e34 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 08008e36 */ BCC branch_08008e20 \n\
 \n\
branch_08008e38: \n\
/* 08008e38 */ POP {R4-R6} \n\
/* 08008e3a */ POP {R0} \n\
/* 08008e3c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
