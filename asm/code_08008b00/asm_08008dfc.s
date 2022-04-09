asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008dfc \n\
/* 08008dfc */ PUSH {LR} \n\
/* 08008dfe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008e00 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008e02 */ BCS branch_08008e0c \n\
 \n\
branch_08008e04: \n\
/* 08008e04 */ STMIA R0!, {R2} \n\
/* 08008e06 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08008e08 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008e0a */ BCC branch_08008e04 \n\
 \n\
branch_08008e0c: \n\
/* 08008e0c */ POP {R0} \n\
/* 08008e0e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
