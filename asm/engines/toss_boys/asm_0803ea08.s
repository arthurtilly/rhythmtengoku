asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ea08 \n\
/* 0803ea08 */ LDR R1, =gCurrentEngineData \n\
/* 0803ea0a */ LDR R1, [R1] \n\
/* 0803ea0c */ MOVS R2, 0xE4 @ Set R2 to 0xE4 \n\
/* 0803ea0e */ LSLS R2, R2, 0x2 \n\
/* 0803ea10 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ea12 */ STRH R0, [R1] \n\
/* 0803ea14 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
