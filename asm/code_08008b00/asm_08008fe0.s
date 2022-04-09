asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008fe0 \n\
/* 08008fe0 */ LDR R2, =D_030010f8 \n\
/* 08008fe2 */ LDRB R2, [R2] \n\
/* 08008fe4 */ STRB R2, [R0] \n\
/* 08008fe6 */ LDR R0, =D_030010f9 \n\
/* 08008fe8 */ LDRB R0, [R0] \n\
/* 08008fea */ STRB R0, [R1] \n\
/* 08008fec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
