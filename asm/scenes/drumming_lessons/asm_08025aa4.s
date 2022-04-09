asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025aa4 \n\
/* 08025aa4 */ LDR R2, =D_030055d0 \n\
/* 08025aa6 */ LDR R2, [R2] \n\
/* 08025aa8 */ LSLS R0, R0, 0x1 \n\
/* 08025aaa */ MOVS R3, 0x9F @ Set R3 to 0x9F \n\
/* 08025aac */ LSLS R3, R3, 0x5 \n\
/* 08025aae */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08025ab0 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08025ab2 */ STRH R1, [R2] \n\
/* 08025ab4 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
