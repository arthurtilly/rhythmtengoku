asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080424f0 \n\
/* 080424f0 */ LDR R1, =gCurrentEngineData \n\
/* 080424f2 */ LDR R1, [R1] \n\
/* 080424f4 */ LDR R2, =0x2ee \n\
/* 080424f6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080424f8 */ STRH R0, [R1] \n\
/* 080424fa */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
