asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008f04 \n\
/* 08008f04 */ PUSH {R4, LR} \n\
/* 08008f06 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008f08 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 08008f0a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08008f0c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08008f0e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08008f10 */ BL func_08007b80 \n\
/* 08008f14 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08008f16 */ POP {R4} \n\
/* 08008f18 */ POP {R1} \n\
/* 08008f1a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
