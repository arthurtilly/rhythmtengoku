asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bcf4 \n\
/* 0800bcf4 */ LDR R0, =D_030053c0 \n\
/* 0800bcf6 */ LDRB R1, [R0] \n\
/* 0800bcf8 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0800bcfa */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800bcfc */ STRB R1, [R0] \n\
/* 0800bcfe */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
