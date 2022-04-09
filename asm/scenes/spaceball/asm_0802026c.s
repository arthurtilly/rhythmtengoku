asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802026c \n\
/* 0802026c */ LDR R1, =D_030055d0 \n\
/* 0802026e */ LDR R2, [R1] \n\
/* 08020270 */ LDR R1, =D_089de988 \n\
/* 08020272 */ LSLS R0, R0, 0x2 \n\
/* 08020274 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08020276 */ LDR R1, [R1] \n\
/* 08020278 */ STR R1, [R2, 0x1C] \n\
/* 0802027a */ LDR R1, =D_089de994 \n\
/* 0802027c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802027e */ LDR R0, [R0] \n\
/* 08020280 */ STR R0, [R2, 0x20] \n\
/* 08020282 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
