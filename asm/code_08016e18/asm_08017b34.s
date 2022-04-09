asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017b34 \n\
/* 08017b34 */ LDR R0, =D_030046a4 \n\
/* 08017b36 */ LDR R0, [R0] \n\
/* 08017b38 */ ADDS R0, 0x5D @ Add 0x5D to R0 \n\
/* 08017b3a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017b3c */ STRB R1, [R0] \n\
/* 08017b3e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
