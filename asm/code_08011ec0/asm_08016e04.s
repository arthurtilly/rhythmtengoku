asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e04 \n\
/* 08016e04 */ LDR R1, =D_030046a4 \n\
/* 08016e06 */ LDR R1, [R1] \n\
/* 08016e08 */ LDR R2, =0x4ae \n\
/* 08016e0a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08016e0c */ STRH R0, [R1] \n\
/* 08016e0e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
