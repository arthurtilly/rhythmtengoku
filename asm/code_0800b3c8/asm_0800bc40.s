asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bc40 \n\
/* 0800bc40 */ LDR R2, =D_030053c0 \n\
/* 0800bc42 */ LDRB R1, [R2] \n\
/* 0800bc44 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800bc46 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800bc48 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bc4a */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0800bc4c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800bc4e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bc50 */ STRB R0, [R2] \n\
/* 0800bc52 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
