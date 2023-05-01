asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080277a0 \n\
/* 080277a0 */ LDR R0, =gCurrentEngineData \n\
/* 080277a2 */ LDR R0, [R0] \n\
/* 080277a4 */ LDR R1, =0x00000425 \n\
/* 080277a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080277a8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080277aa */ STRB R1, [R0] \n\
/* 080277ac */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
