asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018068 \n\
/* 08018068 */ LDR R0, =D_030046a4 \n\
/* 0801806a */ LDR R0, [R0] \n\
/* 0801806c */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 0801806e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08018070 */ STRB R1, [R0] \n\
/* 08018072 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
