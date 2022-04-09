asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008e74 \n\
/* 08008e74 */ PUSH {R4-R7, LR} \n\
/* 08008e76 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08008e78 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08008e7a */ BL func_08008dfc \n\
/* 08008e7e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08008e80 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 08008e82 */ BCS branch_08008e9e \n\
/* 08008e84 */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
 \n\
branch_08008e86: \n\
/* 08008e86 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008e88 */ BL func_08001980 \n\
/* 08008e8c */ LDR R2, [R6] \n\
/* 08008e8e */ LSLS R0, R0, 0x2 \n\
/* 08008e90 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08008e92 */ LDR R1, [R0] \n\
/* 08008e94 */ STMIA R6!, {R1} \n\
/* 08008e96 */ STR R2, [R0] \n\
/* 08008e98 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08008e9a */ CMP R5, R4 @ Check R5 - R4 \n\
/* 08008e9c */ BCC branch_08008e86 \n\
 \n\
branch_08008e9e: \n\
/* 08008e9e */ POP {R4-R7} \n\
/* 08008ea0 */ POP {R0} \n\
/* 08008ea2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
