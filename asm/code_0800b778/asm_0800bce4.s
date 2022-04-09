asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bce4 \n\
/* 0800bce4 */ LDR R0, =D_030053c0 \n\
/* 0800bce6 */ LDRB R1, [R0] \n\
/* 0800bce8 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0800bcea */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 0800bcec */ STRB R1, [R0] \n\
/* 0800bcee */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
