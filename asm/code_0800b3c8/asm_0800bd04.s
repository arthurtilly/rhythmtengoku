asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bd04 \n\
/* 0800bd04 */ LDR R3, =D_030053c0 \n\
/* 0800bd06 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0800bd08 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bd0a */ LDRB R2, [R3, 0x1] \n\
/* 0800bd0c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800bd0e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800bd10 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800bd12 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800bd14 */ STRB R1, [R3, 0x1] \n\
/* 0800bd16 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
