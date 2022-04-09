asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bc58 \n\
/* 0800bc58 */ LDR R0, =D_030053c0 \n\
/* 0800bc5a */ LDRB R1, [R0] \n\
/* 0800bc5c */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0800bc5e */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800bc60 */ STRB R1, [R0] \n\
/* 0800bc62 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
