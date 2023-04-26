asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a490 \n\
/* 0803a490 */ LDR R1, =gCurrentEngineData \n\
/* 0803a492 */ LDR R1, [R1] \n\
/* 0803a494 */ MOVS R2, 0x8F @ Set R2 to 0x8F \n\
/* 0803a496 */ LSLS R2, R2, 0x1 \n\
/* 0803a498 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803a49a */ STRB R0, [R1] \n\
/* 0803a49c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
