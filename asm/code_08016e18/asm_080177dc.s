asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080177dc \n\
/* 080177dc */ LDR R1, =D_030046a4 \n\
/* 080177de */ LDR R1, [R1] \n\
/* 080177e0 */ MOVS R2, 0xB7 @ Set R2 to 0xB7 \n\
/* 080177e2 */ LSLS R2, R2, 0x3 \n\
/* 080177e4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080177e6 */ STRB R0, [R1] \n\
/* 080177e8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
