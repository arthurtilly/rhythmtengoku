asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800253c \n\
/* 0800253c */ PUSH {R4-R6, LR} \n\
/* 0800253e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002540 */ LDR R0, [SP, 0x10] \n\
/* 08002542 */ LSLS R1, R1, 0x10 \n\
/* 08002544 */ LSRS R1, R1, 0x10 \n\
/* 08002546 */ LSLS R2, R2, 0x10 \n\
/* 08002548 */ LSRS R5, R2, 0x10 \n\
/* 0800254a */ LSLS R3, R3, 0x10 \n\
/* 0800254c */ LSRS R3, R3, 0x10 \n\
/* 0800254e */ LSLS R0, R0, 0x10 \n\
/* 08002550 */ LSRS R6, R0, 0x10 \n\
/* 08002552 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08002554 */ BLT branch_08002578 \n\
/* 08002556 */ LDR R2, =D_03000138 \n\
/* 08002558 */ LSLS R0, R4, 0x3 \n\
/* 0800255a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800255c */ STRH R1, [R0] \n\
/* 0800255e */ LSLS R1, R4, 0x2 \n\
/* 08002560 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 08002562 */ LSLS R0, R0, 0x1 \n\
/* 08002564 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08002566 */ STRH R5, [R0] \n\
/* 08002568 */ ADDS R0, R1, 0x2 @ Set R0 to R1 + 0x2 \n\
/* 0800256a */ LSLS R0, R0, 0x1 \n\
/* 0800256c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800256e */ STRH R3, [R0] \n\
/* 08002570 */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 08002572 */ LSLS R1, R1, 0x1 \n\
/* 08002574 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08002576 */ STRH R6, [R1] \n\
 \n\
branch_08002578: \n\
/* 08002578 */ POP {R4-R6} \n\
/* 0800257a */ POP {R0} \n\
/* 0800257c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
