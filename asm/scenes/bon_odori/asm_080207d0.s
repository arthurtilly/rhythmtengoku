asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080207d0 \n\
/* 080207d0 */ PUSH {R4, R5, LR} \n\
/* 080207d2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080207d4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_080207d6: \n\
/* 080207d6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080207d8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080207da */ BL func_08020778 \n\
/* 080207de */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080207e0 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 080207e2 */ BLS branch_080207d6 \n\
/* 080207e4 */ POP {R4, R5} \n\
/* 080207e6 */ POP {R0} \n\
/* 080207e8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
