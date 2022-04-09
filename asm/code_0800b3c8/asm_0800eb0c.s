asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800eb0c \n\
/* 0800eb0c */ LDR R2, =D_030053c0 \n\
/* 0800eb0e */ LDRB R1, [R2, 0x1] \n\
/* 0800eb10 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0800eb12 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800eb14 */ STRB R0, [R2, 0x1] \n\
/* 0800eb16 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
