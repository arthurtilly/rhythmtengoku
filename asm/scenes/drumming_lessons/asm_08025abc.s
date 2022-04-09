asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025abc \n\
/* 08025abc */ LDR R2, =D_030055d0 \n\
/* 08025abe */ LDR R2, [R2] \n\
/* 08025ac0 */ LSLS R0, R0, 0x1 \n\
/* 08025ac2 */ LDR R3, =0x000013ec \n\
/* 08025ac4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08025ac6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08025ac8 */ STRH R1, [R2] \n\
/* 08025aca */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
