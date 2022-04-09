asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080177a4 \n\
/* 080177a4 */ LDR R2, =D_030046a4 \n\
/* 080177a6 */ LDR R1, [R2] \n\
/* 080177a8 */ LDR R3, =0x5b4 \n\
/* 080177aa */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080177ac */ STRB R0, [R1] \n\
/* 080177ae */ LDR R0, [R2] \n\
/* 080177b0 */ LDR R1, =0x5b5 \n\
/* 080177b2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080177b4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080177b6 */ STRB R1, [R0] \n\
/* 080177b8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
