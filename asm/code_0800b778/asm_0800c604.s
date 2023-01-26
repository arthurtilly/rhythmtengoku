asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c604 \n\
/* 0800c604 */ PUSH {R4, R5, LR} \n\
/* 0800c606 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800c608 */ LDR R4, =D_030053c0 \n\
/* 0800c60a */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800c60c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800c60e */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800c610 */ LSLS R1, R1, 0x1 \n\
/* 0800c612 */ LDRB R2, [R4, 0x1] \n\
/* 0800c614 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0800c616 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800c618 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800c61a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800c61c */ STRB R0, [R4, 0x1] \n\
/* 0800c61e */ LSLS R0, R0, 0x1C \n\
/* 0800c620 */ LSRS R0, R0, 0x1D \n\
/* 0800c622 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800c624 */ BL set_current_mem_id \n\
/* 0800c628 */ LDR R2, =D_03005588 \n\
/* 0800c62a */ LSLS R0, R5, 0x2 \n\
/* 0800c62c */ MOVS R3, 0xB0 @ Set R3 to 0xB0 \n\
/* 0800c62e */ LSLS R3, R3, 0x1 \n\
/* 0800c630 */ ADDS R1, R4, R3 @ Set R1 to R4 + R3 \n\
/* 0800c632 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800c634 */ STR R0, [R2] \n\
/* 0800c636 */ LDR R1, =D_0300558c \n\
/* 0800c638 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800c63a */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800c63c */ ADDS R4, 0x7E @ Add 0x7E to R4 \n\
/* 0800c63e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800c640 */ STR R0, [R1] \n\
/* 0800c642 */ POP {R4, R5} \n\
/* 0800c644 */ POP {R0} \n\
/* 0800c646 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
