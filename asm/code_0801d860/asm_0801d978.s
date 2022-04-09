asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d978 \n\
/* 0801d978 */ LDR R0, =D_030053c0 \n\
/* 0801d97a */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0801d97c */ LDRB R2, [R0] \n\
/* 0801d97e */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 0801d980 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0801d982 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0801d984 */ STRB R1, [R0] \n\
/* 0801d986 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
