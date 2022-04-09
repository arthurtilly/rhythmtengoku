asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802cfa4 \n\
/* 0802cfa4 */ LDR R1, =D_030055d0 \n\
/* 0802cfa6 */ LDR R3, [R1] \n\
/* 0802cfa8 */ LSLS R2, R0, 0x2 \n\
/* 0802cfaa */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802cfac */ LSLS R2, R2, 0x3 \n\
/* 0802cfae */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802cfb0 */ ADDS R0, 0x3C @ Add 0x3C to R0 \n\
/* 0802cfb2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802cfb4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802cfb6 */ STR R1, [R0] \n\
/* 0802cfb8 */ ADDS R3, 0x44 @ Add 0x44 to R3 \n\
/* 0802cfba */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0802cfbc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802cfbe */ STR R0, [R3] \n\
/* 0802cfc0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
