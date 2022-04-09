asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017744 \n\
/* 08017744 */ LDR R1, =D_030046a4 \n\
/* 08017746 */ LDR R1, [R1] \n\
/* 08017748 */ MOVS R2, 0x95 @ Set R2 to 0x95 \n\
/* 0801774a */ LSLS R2, R2, 0x3 \n\
/* 0801774c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801774e */ STRB R0, [R1] \n\
/* 08017750 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
