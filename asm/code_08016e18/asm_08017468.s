asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017468 \n\
/* 08017468 */ LDR R1, =D_030046a4 \n\
/* 0801746a */ LDR R1, [R1] \n\
/* 0801746c */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801746e */ LSLS R2, R2, 0x3 \n\
/* 08017470 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08017472 */ STRH R0, [R1] \n\
/* 08017474 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
