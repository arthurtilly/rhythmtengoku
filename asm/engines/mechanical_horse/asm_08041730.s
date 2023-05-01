asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08041730 \n\
/* 08041730 */ LDR R1, =gCurrentEngineData \n\
/* 08041732 */ LDR R1, [R1] \n\
/* 08041734 */ MOVS R2, 0xBA @ Set R2 to 0xBA \n\
/* 08041736 */ LSLS R2, R2, 0x2 \n\
/* 08041738 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804173a */ STRB R0, [R1] \n\
/* 0804173c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
