asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080324a4 \n\
/* 080324a4 */ LDR R1, =gCurrentEngineData \n\
/* 080324a6 */ LDR R1, [R1] \n\
/* 080324a8 */ MOVS R2, 0xF1 @ Set R2 to 0xF1 \n\
/* 080324aa */ LSLS R2, R2, 0x1 \n\
/* 080324ac */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080324ae */ STRH R0, [R1] \n\
/* 080324b0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
