asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800714c \n\
/* 0800714c */ LDR R2, =D_03004b10 \n\
/* 0800714e */ LDR R0, =0x854 \n\
/* 08007150 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08007152 */ LDRB R1, [R2] \n\
/* 08007154 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08007156 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08007158 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800715a */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0800715c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800715e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007160 */ STRB R0, [R2] \n\
/* 08007162 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
